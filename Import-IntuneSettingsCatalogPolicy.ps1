Function Import-IntuneSettingsCatalogPolicy {
    <#
    .SYNOPSIS
    Import .JSON of a settings catalog policy to Intune.
    .DESCRIPTION
    Import .JSON of a settings catalog policy to Intune. No assignments will be created.
    .EXAMPLE
    Import-g46IntuneDeviceConfigurationPolicy
    .NOTES
    https://github.com/microsoftgraph/powershell-intune-samples/blob/master/SettingsCatalog/SettingsCatalog_Import_FromJSON.ps1
    #>

    #Microsoft Graph Connection check
    if ($null -eq (Get-MgContext)) {
        Write-Error "Authentication needed. Please call Connect-g46GraphAppDelegated."
        Break
    }

    #Declarations
    $date = Get-Date -Format yyyyMMdd-HHmm
    $resultsfile = "$OutputDir\Import-g46IntuneDeviceConfigurationPolicy-$date.csv"
    $logfile = "$Outputdir\Import-g46IntuneDeviceConfigurationPolicy-$date.log"

    # Start transcript logging
    Start-Transcript -Path $logfile -Append -Force

    $ImportPath = Get-ImportPath
    $JSON_Data = gc "$ImportPath"

    # Excluding entries that are not required - id,createdDateTime,lastModifiedDateTime,version
    $JSON_Convert = $JSON_Data | ConvertFrom-Json | Select-Object -Property * -ExcludeProperty id, createdDateTime, lastModifiedDateTime, version, supportsScopeTags

    $DisplayName = $JSON_Convert.name

    $JSON_Output = $JSON_Convert | ConvertTo-Json -Depth 20
            
    write-host
    write-host "Settings Catalog Policy '$DisplayName' Found..." -ForegroundColor Yellow
    write-host
    $JSON_Output
    write-host
    Write-Host "Adding Settings Catalog Policy '$DisplayName'" -ForegroundColor Yellow
    New-MgBetaDeviceManagementConfigurationPolicy -Body $JSON_Output

    #Stop transcript
    Stop-Transcript

}
