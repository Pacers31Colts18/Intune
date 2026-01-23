Function Import-g46IntuneSettingsCatalogPolicy {
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
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($OutputDir.Length -eq 0) { $OutputDir = $pwd }
    #$OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    $LogFilePath = "$OutputDir\$FunctionName-$date.log"

    # Start transcript logging
    Start-Transcript -Path $LogFilePath -Append -Force

    $ImportPath = Get-ImportPath
    $JSON_Data = gc "$ImportPath"

    # Excluding entries that are not required - id,createdDateTime,lastModifiedDateTime,version
    $JSON_Convert = $JSON_Data | ConvertFrom-Json | Select-Object -Property * -ExcludeProperty id, createdDateTime, lastModifiedDateTime, version, supportsScopeTags

    $DisplayName = $JSON_Convert.name

    $JSON_Output = $JSON_Convert | ConvertTo-Json -Depth 20
            
    Write-g46Log -Message "Reading file from $ImportPath..."
    Write-g46Log -Message "Settings catalog policy $DisplayName found."
    Write-g46Log -Message "File contents=$JSON_Output"
    Write-g46Log -Message "Adding device configuration policy $DisplayName to Tenant ID $((Get-MgContext).TenantId)."
    New-MgBetaDeviceManagementConfigurationPolicy -Body $JSON_Output

    #Stop transcript
    Stop-Transcript

}