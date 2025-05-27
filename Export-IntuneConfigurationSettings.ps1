Function Export-IntuneConfigurationSettings {
    <#
    .SYNOPSIS
        Exports Intune configuration settings for a specified Windows SKU.

    .DESCRIPTION
        This function connects to Microsoft Graph and retrieves Intune configuration settings 
        filtered by a specified Windows SKU. The results are exported to a CSV file.

    .PARAMETER Scope
        Specifies the Windows SKU to filter configuration settings.
        Possible values: 'windowsCloudN', 'windows11SE', 'iotEnterpriseSEval', 'windowsCPC',
                         'windowsEnterprise', 'windowsProfessional', 'windowsEducation',
                         'holographicForBusiness', 'windowsMultiSession', 'iotEnterprise'

    .EXAMPLE
        Export-IntuneConfigurationSettings -Scope windowsEnterprise
        Retrieves configuration settings for Windows Enterprise SKU and exports them to a CSV file.

    .EXAMPLE
        Export-IntuneConfigurationSettings -Scope windowsProfessional
        Retrieves configuration settings for Windows Professional SKU and exports them to a CSV file.

    .NOTES
        - Requires authentication to Microsoft Graph.
        - Output files are saved in the current directory unless specified otherwise.
    #>

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True,
            HelpMessage = "Choose from the following: All, windowsCloudN, windows11SE, iotEnterpriseSEval, windowsCPC, windowsEnterprise, windowsProfessional, windowsEducation, holographicForBusiness, windowsMultiSession, iotEnterprise")]
        [ValidateSet('All', 'windowsCloudN', 'windows11SE', 'windows11SE', 'iotEnterpriseSEval', 'windowsCPC', 'windowsEnterprise', 'windowsProfessional', 'windowsEducation', 'holographicForBusiness', 'windowsMultiSession', 'iotEnterprise')]
        [string]$Scope
    )

    # Microsoft Graph Connection check
    if ($null -eq (Get-MgContext)) {
        Write-Error "Authentication needed. Please connect to Microsoft Graph."
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

    #region Gather the settings
    Switch ($Scope) {
        "All" {
            $uri = "https://graph.microsoft.com/beta/deviceManagement/configurationSettings"
            $Settings = (Invoke-MGGraphRequest -Method Get -Uri $uri).value
        }
        Default {
            Try {
                $uri = "https://graph.microsoft.com/beta/deviceManagement/configurationSettings?`$search=%22|||WindowsSkus=$Scope|||%22"
                $Settings = (Invoke-MGGraphRequest -Method Get -Uri $uri).value
            }
            Catch {
                Write-Error "Error gathering Settings: $_"
            }
        }
    }
    #endregion

    #region Build Object
    foreach ($item in $Settings) {
        $result = New-Object -TypeName PSObject -Property @{
            Name                    = $item.Name
            Keywords                = $item.Keywords -join "; "
            RootDefinitionId        = $item.RootDefinitionId
            DisplayName             = $item.DisplayName
            HelpText                = $item.HelpText
            OffsetURI               = $item.OffsetURI
            InfoUrls                = $item.InfoUrls -join "; "
            MinimumSupportedVersion = $item.applicability.MinimumSupportedVersion
            WindowsSkus             = $item.applicability.WindowsSkus -join "; "
        }
        $ResultsArray += $result
    }
    #endregion

    #region Results
    if ($ResultsArray.Count -ge 1) {
        $ResultsArray | Sort-Object -Property DisplayName | Export-Csv -Path $OutputFilePath -NoTypeInformation
    }

    # Test if output file was created
    if (Test-Path $OutputFilePath) {
        Write-Output "Output file = $OutputFilePath."
    }
    else {
        Write-Warning "No output file created."
    }
    #endregion
}
