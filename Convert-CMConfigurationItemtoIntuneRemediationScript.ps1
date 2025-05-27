function Convert-CMConfigurationItemtoIntuneRemediationScript {
<#
.SYNOPSIS
    Converts Configuration Manager (SCCM) Configuration Items into Intune Remediation Scripts.

.DESCRIPTION
    This function retrieves configuration items and their associated registry-based compliance settings from SCCM, 
    then generates detection and remediation scripts suitable for use in Microsoft Intune.

.PARAMETER configurationItem
    (Optional) An array of Configuration Item names to process.
    If not provided, a selection prompt will be shown.

.PARAMETER scriptType
    (Optional) Specifies the type of script to generate. Accepted values:
    - "Detection": Generates a detection script only.
    - "Remediation": Generates a remediation script only.
    - "Detection/Remediation" (default): Generates both detection and remediation scripts.

.EXAMPLE
    Convert-CMConfigurationItemtoIntuneRemediationScript -configurationItem "RegistryCheck1", "RegistryCheck2"
    This example processes Configuration Items "RegistryCheck1" and "RegistryCheck2" and generates detection 
    and remediation scripts for registry-based settings.

.EXAMPLE
    Convert-CMConfigurationItemtoIntuneRemediationScript -scriptType "Detection"
    This example generates only a detection script for all registry-based configuration items.

.NOTES
    Author: Joe Loveless
    Date: 5/15/2025
    Requires: SCCM PowerShell Module
    
#>

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $False)]
        [array]$configurationItem,
        [Parameter(Mandatory = $False)]
        [ValidateSet("Detection", "Remediation", "Detection/Remediation")]
        $scriptType = "Detection/Remediation"
    )

    $StartingLocation = $pwd

    #region ConfigMgr Authentication
    $SiteCode = "JL1"
    Import-Module "$($ENV:SMS_ADMIN_UI_PATH)\..\ConfigurationManager.psd1"
    Set-Location "$SiteCode`:"
    #endregion

    #region Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($outputdir.Length -eq 0) { $outputdir = $pwd }
    $OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    $LogFilePath = "$OutputDir\$FunctionName-$date.log"
    $templateDetectionScript = "C:\Users\jlove\test\detect_.ps1"
    $templateRemediationScript = "C:\Users\jlove\test\remediate_.ps1"
    $OutputDetectionScript = "$OutputDir\detect_$FunctionName-$date.ps1"
    $OutputRemediationScript = "$OutputDir\remediate_$FunctionName-$date.ps1"
    $ResultsArray = @()
    #endregion

    #region Configuration Items
    if ($null -eq $configurationItem) {
        $resolvedConfigurationItems = (Get-CMConfigurationItem -Name * -Fast | 
            Select-Object DateLastModified, InUse, LocalizedDescription, LocalizedDisplayName, ObjectPath |
            Out-GridView -PassThru).LocalizedDisplayName
    }
    else {
        $resolvedConfigurationItems = @()
        foreach ($item in $configurationItem) {
            $resolvedItem = (Get-CMConfigurationItem -Name $item -Fast).LocalizedDisplayName
            if ($resolvedItem) {
                $resolvedConfigurationItems += $resolvedItem
            }
            else {
                Write-Warning "Could not resolve configuration item: $item"
            }
        }
    }
    #endregion

    #region Compliance Rules/Compliance Settings
    foreach ($item in $resolvedConfigurationItems) {
        Write-Output "Processing configuration item: $item"

        $complianceRules = Get-CMComplianceRule -Name $item -WarningAction Ignore | 
        Where-Object { $_.expression.operands.methodtype -eq "Value" }

        $complianceSettings = Get-CMComplianceSetting -Name $item -WarningAction Ignore | 
        Where-Object { $_.sourceType -eq "Registry" } | Select-Object -Unique

        if (!$complianceSettings) {
            Write-Warning "Configuration Item '$item' is not Registry-based. Skipping..."
            continue
        }

        foreach ($rule in $complianceRules) {
            foreach ($setting in $complianceSettings) {

                $settingdatatypeName = switch ($setting.settingdataType.Name) {
                    "Int64" { "DWORD" }
                    "String" { "STRING" }
                    "StringArray" { "MULTI_STRING" }
                    default { $setting.settingdataType.Name }
                }

                $settingLocation = $setting.location -replace '^HKEY_LOCAL_MACHINE', 'HKLM:' -replace '^HKEY_CURRENT_USER', 'HKCU:'
                $result = New-Object -TypeName PSObject -Property @{
                    RuleValue       = $($rule.expression.operands.Value)
                    SettingDataType = $settingdatatypeName
                    SettingPath     = $settingLocation
                    SettingName     = $($setting.ValueName)
                }

                $ResultsArray += $result
            }
        }
    }

    if ($ResultsArray.Count -eq 0) {
        Write-Warning "No registry-based configuration settings found in any selected Configuration Items."
        return
    }
    #endregion

    #region Build RegistryKeys content
    $registryKeysContent = @()
    $registryKeysContent += "`$RegistryKeys = @("
    foreach ($result in $ResultsArray) {
        $registryKeysContent += "    @{ Path = `"$($result.SettingPath)`"; Name = `"$($result.SettingName)`"; Type = `"$($result.SettingDataType)`"; Value = `"$($result.RuleValue)`" }"
    }
    $registryKeysContent += ")"
    #endregion

    #region Detection Script
    if ($scriptType -eq "Detection" -or $scriptType -eq "Detection/Remediation") {
        $detectiontemplateLines = Get-Content $templateDetectionScript
        $detectionstartIndex = $detectiontemplateLines.IndexOf('$RegistryKeys = @(')
        $detectionendIndex = $detectiontemplateLines.IndexOf(')')

        if ($detectionstartIndex -eq -1 -or $detectionendIndex -eq -1) {
            Write-Warning "Could not find `$RegistryKeys block in the detection template. Check formatting."
        }
        else {
            $detectionnewContent = @()
            $detectionnewContent += $detectiontemplateLines[0..($detectionstartIndex - 1)]
            $detectionnewContent += $registryKeysContent
            $detectionnewContent += $detectiontemplateLines[($detectionendIndex + 1)..($detectiontemplateLines.Length - 1)]

            $detectionnewContent | Out-File $OutputDetectionScript -Encoding utf8
            Write-Output "Detection script saved as: $OutputDetectionScript"
        }
    }
    #endregion

    #region Remediation Script
    if ($scriptType -eq "Remediation" -or $scriptType -eq "Detection/Remediation") {
        $remediationtemplateLines = Get-Content $templateRemediationScript
        $remediationstartIndex = $remediationtemplateLines.IndexOf('$RegistryKeys = @(')
        $remediationendIndex = $remediationtemplateLines.IndexOf(')')

        if ($remediationstartIndex -eq -1 -or $remediationendIndex -eq -1) {
            Write-Warning "Could not find `$RegistryKeys block in the remediation template. Check formatting."
        }
        else {
            $remediationnewContent = @()
            $remediationnewContent += $remediationtemplateLines[0..($remediationstartIndex - 1)]
            $remediationnewContent += $registryKeysContent
            $remediationnewContent += $remediationtemplateLines[($remediationendIndex + 1)..($remediationtemplateLines.Length - 1)]

            $remediationnewContent | Out-File $OutputRemediationScript -Encoding utf8
            Write-Output "Remediation script saved as: $OutputRemediationScript"
        }
    }
    #endregion
    Set-Location $StartingLocation
}
