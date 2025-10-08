Function Export-IntuneGPOSettings {
    <#
    .SYNOPSIS
    Imports a CSV file to search for equivalant Group Policy settings in Microsoft Intune.
    Imported CSV must contain the following header: SettingName

    .DESCRIPTION
        This function connects to Microsoft Graph and retrieves Intune settings from a corresponding GPO settings file. The results are exported to a CSV file.

    .PARAMETER InputFilePath
        The CSV file to import for processing.

    .EXAMPLE
        Export-IntuneGPOSettings -InputFilePath "C:\temp\gpocsv.csv"

    .NOTES
        - Requires authentication to Microsoft Graph.
        - Output files are saved in the current directory unless specified otherwise.
    #>

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $False)]
        [string]$InputFilePath = (Read-Host -Prompt 'Enter full path to CSV mapping file').Trim('"')
    )

    # Microsoft Graph Connection check
    if ($null -eq (Get-MgContext)) {
        Write-Output "Authentication needed. Please call Connect-MgGraph."
        Break
    }

    #region Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($outputdir.Length -eq 0) { $outputdir = $pwd }
    $OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    $LogFilePath = "$OutputDir\$FunctionName-$date.log"
    $ResultsArray = @()
    #endregion

    #Load CSV
    Try { 
        $csv = Import-Csv -path $inputfilepath
    }
    Catch {
        Write-Error "An error occurred importing CSV file: $_"
    }

    #region Gather the settings
foreach ($gp in $csv){
    Try {
        $uri = "https://graph.microsoft.com/beta/deviceManagement/configurationSettings?`$filter=Name eq '$($gp.settingName)'"
        $Settings = (Invoke-MGGraphRequest -Method Get -Uri $uri).value | Where-Object { $_.applicability.platform -match 'windows' }

    }
    Catch {
        Write-Error "Error gathering settings"
    }

    #region Build Object
    if ($Settings -and $Settings.Count -ge 1) {
        foreach ($item in $Settings) {
            $result = New-Object -TypeName PSObject -Property @{
                GroupPolicyName         = $gp.settingName
                GroupPolicyKey          = $gp.Key
                GroupPolicyValueName    = $gp.valueName
                IntuneName                    = $item.Name
                IntuneKeywords                = $item.Keywords -join "; "
                IntuneRootDefinitionId        = $item.RootDefinitionId
                IntuneDisplayName             = $item.DisplayName
                IntuneHelpText                = $item.HelpText
                IntuneOffsetURI               = $item.OffsetURI
                IntuneInfoUrls                = $item.InfoUrls -join "; "
                IntuneMinimumSupportedVersion = $item.applicability.MinimumSupportedVersion
                IntuneWindowsSkus             = $item.applicability.WindowsSkus -join "; "
            }
            $ResultsArray += $result
        }
    } else {
        $result = New-Object -TypeName PSObject -Property @{
            GroupPolicyName         = $gp.settingName
            GroupPolicyKey          = $gp.Key
            GroupPolicyValueName    = $gp.valueName        
            IntuneName                    = ""
            IntuneKeywords                = ""
            IntuneRootDefinitionId        = ""
            IntuneDisplayName             = ""
            IntuneHelpText                = ""
            IntuneOffsetURI               = ""
            IntuneInfoUrls                = ""
            IntuneMinimumSupportedVersion = ""
            IntuneWindowsSkus             = ""
        }
        $ResultsArray += $result
    }
}
#endregion

    #region Results
    if ($ResultsArray.Count -ge 1) {
        $ResultsArray | Sort-Object -Property DisplayName | Select-Object GroupPolicyName, GroupPolicyKey, GroupPolicyValueName, IntuneDisplayName, IntuneName, IntuneKeywords, IntuneRootDefinitionId, IntuneOffsetURI, IntuneInfoUrls, IntuneMinimumSupportedVersion, IntuneWindowsSkus | Export-Csv -Path $OutputFilePath -NoTypeInformation    }

    # Test if output file was created
    if (Test-Path $OutputFilePath) {
        Write-Output "Output file = $OutputFilePath."
    }
    else {
        Write-Warning "No output file created."
    }
    #endregion
}
