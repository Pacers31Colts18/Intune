function Remove-G46IntuneSettingsCatalogPolicy {
    <#
    .Synopsis
    Deletes Intune settings catalog policies based on an input from a CSV file.
    .Description
    Deletes Intune settings catalog policies based on an input from a CSV file. CSV file needs to include the profile name an id.
    .Example
    Remove-G46IntuneSettingsCatalogPolicy -csv "C:\temp\intune_removal.csv"
    #> 

    [CmdletBinding()]
    Param(

        [Parameter(Mandatory = $False)]
        [string]$InputFilePath = (Read-Host -Prompt 'Enter the path to the input file')

    )

    #Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($OutputDir.Length -eq 0) { $OutputDir = $pwd }
    #$OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    $LogFilePath = "$OutputDir\$FunctionName-$date.log"
    $Username = $env:USERNAME
    $InputFileContents = Import-CSV $InputFilePath.Trim('"')

    #Microsoft Graph Connection check
    if ($null -eq (Get-MgContext)) {
        Write-Error "Authentication needed. Please call Connect-g46GraphAppDelegated."
        Break
    }

    $TenantID = (Get-MgContext).TenantId

    if ($TenantID -eq "33562380-59ef-467d-88af-316a728263b2") {
        $Tenant = "DEV"
    }
    if ($TenantID -eq "eb14b046-24c4-4519-8f26-b89c2159828c") {
        $Tenant = "PROD"
    }
     
    Start-Transcript -Path $LogFilePath
    foreach ($Line in $InputFileContents) { 
        $scpExists =$null
        $scpExistsPost=$null
        $PolicyName = $Line.PolicyName
        $PolicyId = $Line.PolicyId

        #Check profile exists
        Write-g46Log -Message "Locating $PolicyName..."
        $scpExists = Get-MgBetaDeviceManagementConfigurationPolicy -DeviceManagementConfigurationPolicyId $PolicyId -ErrorAction SilentlyContinue
        if($scpExists)
        {
            #Check for assignments
            try {
                $scassignments = Get-MgBetaDeviceManagementConfigurationPolicyAssignment -DeviceManagementConfigurationPolicyId $PolicyId -ErrorAction SilentlyContinue
            }
            Catch {
                Write-g46Log -Message $_.Exception.Message -Level Error
                Break
            }

            If ($scassignments -ne $null -or $scassignments.count -gt 0) {
                Write-g46Log -Message "$PolicyName still has assignments. Skipping removal..." -Level Warning
            }

            If ($scassignments -eq $null -or $scassignments.count -eq 0) {
                Write-g46Log -Message "No assignments found for $PolicyName"

                #Perform backup
                Try {
                    Write-g46Log -Message "Backing up $PolicyName..."
                    Export-g46IntuneSettingsCatalogPolicy -PolicyId $PolicyId
                }
                Catch [System.IO.PathTooLongException] {
                    Write-g46Log -Message "File path is too long for $PolicyName. Shorten the profile name and try again." -Level Error
                    Break
                }
                Catch
                {   
                    Write-g46Log -Message $_.Exception.Message -Level Error
                    Break
                }
                Try {
                    Write-g46Log -Message "Attempting to remove $PolicyName from $tenant."
                    Remove-MgBetaDeviceManagementConfigurationPolicy -DeviceManagementConfigurationPolicyId $PolicyId -ErrorAction SilentlyContinue
                    $scpExistsPost = Get-MgBetaDeviceManagementConfigurationPolicy -DeviceManagementConfigurationPolicyId $PolicyId -ErrorAction SilentlyContinue
                    if(!($scpExistsPost))
                    {
                        Write-g46Log -Message "$PolicyName removed from $tenant."
                    }
                    else{
                        Write-g46Log -Message "Unable to remove $PolicyName from $tenant." -Level Error
                    }
                }
                Catch {
                    Write-g46Log -Message "Unable to remove $PolicyName from $tenant." -Level Error
                    Break
                }
            }
        }
        else{
            Write-g46Log -Message "$PolicyName does not exist in $tenant." -Level Error
        }

    } 
    Stop-Transcript
}
