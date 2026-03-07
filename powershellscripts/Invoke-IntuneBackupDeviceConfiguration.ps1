<#
.SYNOPSIS
    Backup Intune Device Configuration Profiles

.DESCRIPTION
    This script backs up all Intune Device Configuration Profiles as individual JSON files.
    Each profile is exported with its complete configuration. For Windows 10 Custom 
    Configurations with encrypted OMA settings, the script automatically decrypts the 
    settings to plain text values to enable restoration or migration scenarios.

.PARAMETER Path
    Specifies the root directory path where backup files will be stored.
    A "Device Configurations" subdirectory will be created automatically.

.PARAMETER ApiVersion
    Specifies the Microsoft Graph API version to use.
    Valid values are "v1.0" and "Beta". Default is "Beta".

.EXAMPLE
    Invoke-IntuneBackupDeviceConfiguration -Path "C:\IntuneBackups"
    
    Backs up all Device Configuration profiles to C:\IntuneBackups\Device Configurations\

.EXAMPLE
    Invoke-IntuneBackupDeviceConfiguration -Path "C:\Backups" -ApiVersion "v1.0"
    
    Backs up all Device Configuration profiles using the beta API endpoint

.NOTES
    Requirements:
    - Microsoft.Graph PowerShell module
    - Appropriate permissions in Microsoft Graph (DeviceManagementConfiguration.Read.All)
    - Connected to Microsoft Graph (Connect-MgGraph)
    
    The script will fail if duplicate profile names are detected and will provide
    detailed information about which profiles need to be renamed.
    
    Special handling:
    - Windows 10 Custom Configurations with encrypted OMA settings are automatically
      decrypted during backup to ensure they can be restored successfully.

.LINK
    https://docs.microsoft.com/en-us/graph/api/intune-deviceconfig-deviceconfiguration-list

.AUTHOR
    Generated for Intune Configuration Management

.VERSION
    2.0
#>

function Invoke-IntuneBackupDeviceConfiguration {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path,
        
        [Parameter(Mandatory = $false)]
        [ValidateSet("v1.0", "Beta")]
        [string]$ApiVersion = "Beta"
    )
    
    Write-Host "=============================================================="
    Write-Host "Starting Intune Device Configuration Profile Backup..."
    Write-Host "=============================================================="
    
    try {
        # Get all Device Configuration Profiles from Microsoft Graph
        Write-Verbose "Retrieving Device Configuration profiles from Microsoft Graph API..."
        $deviceConfigurations = Invoke-MgGraphRequest -Uri "$apiVersion/deviceManagement/deviceConfigurations" | Get-MGGraphAllPages
        
        $policyNames = $deviceConfigurations | ForEach-Object { $_.displayName }
        Write-Host "Found $($policyNames.count) Device Configuration profiles"
        
        if ($policyNames.count -eq 0) {
            Write-Warning "No Device Configuration profiles found. Backup completed with no files created."
            return
        }
        
        # Check for duplicate policy names before proceeding
        Write-Verbose "Checking for duplicate policy names..."
        $duplicateNames = $policyNames | Group-Object | Where-Object { $_.Count -gt 1 } | Select-Object -ExpandProperty Name
        
        if ($duplicateNames.Count -gt 0) {
            Write-Host ""
            Write-Host "ERROR: Duplicate policy names detected!"
            Write-Host "The following policies have duplicate names:"
            Write-Host ""
            
            foreach ($duplicateName in $duplicateNames) {
                $duplicatePolicies = $deviceConfigurations | Where-Object { $_.displayName -eq $duplicateName }
                Write-Host "  Policy Name: '$duplicateName' ($($duplicatePolicies.Count) duplicates found)"
                foreach ($policy in $duplicatePolicies) {
                    Write-Host "    - ID: $($policy.id) | Type: $($policy.'@odata.type')"
                }
                Write-Host ""
            }
            
            Write-Host "Please rename the duplicate policies in Intune and run the backup again."
            Write-Error "Backup terminated due to duplicate policy names." -ErrorAction Stop
        }
        
        Write-Host "No duplicate profile names detected. Proceeding with backup..."
        
        # Create backup directory if it doesn't exist
        $backupPath = Join-Path $Path "Device Configurations"
        if (-not (Test-Path $backupPath)) {
            Write-Verbose "Creating backup directory: $backupPath"
            $null = New-Item -Path $backupPath -ItemType Directory -Force
        }
        
        Write-Host "Backup location: $backupPath"
        Write-Host ""
        Write-Host "Backing up profiles..."
        
        # Initialize array to store backup results
        $backupResults = @()
        $currentCount = 0
        
        foreach ($deviceConfiguration in $deviceConfigurations) {
            $currentCount++
            Write-Progress -Activity "Backing up Device Configuration Profiles" `
                          -Status "Processing: $($deviceConfiguration.displayName)" `
                          -PercentComplete (($currentCount / $deviceConfigurations.count) * 100)
            
            # Create safe filename by removing invalid characters
            $fileName = ($deviceConfiguration.displayName).Split([IO.Path]::GetInvalidFileNameChars()) -join '_'
            $filePath = Join-Path $backupPath "$fileName.json"
            
            # Check if this is a Windows 10 Custom Configuration with encrypted OMA settings
            # If so, decrypt the OMA settings to plain text values (required for successful import)
            if (($deviceConfiguration.'@odata.type' -eq '#microsoft.graph.windows10CustomConfiguration') -and 
                ($deviceConfiguration.omaSettings | Where-Object { $_.isEncrypted -contains $true })) {
                
                Write-Verbose "Decrypting OMA settings for profile: $($deviceConfiguration.displayName)"
                
                # Create an empty array to store the unencrypted OMA settings
                $newOmaSettings = @()
                
                foreach ($omaSetting in $deviceConfiguration.omaSettings) {
                    # Check if this particular OMA setting is encrypted
                    if ($omaSetting.isEncrypted) {
                        # Retrieve the plain text value using the secret reference value ID
                        Write-Verbose "  Decrypting OMA setting: $($omaSetting.displayName)"
                        $omaSettingValue = Invoke-MgGraphRequest -Uri "$apiVersion/deviceManagement/deviceConfigurations/$($deviceConfiguration.id)/getOmaSettingPlainTextValue(secretReferenceValueId='$($omaSetting.secretReferenceValueId)')" | Get-MgGraphAllPages
                    } else {
                        # Use the existing value if not encrypted
                        $omaSettingValue = $omaSetting.value
                    }
                    
                    # Create a new unencrypted OMA setting object
                    $newOmaSetting = @{}
                    $newOmaSetting.'@odata.type' = $omaSetting.'@odata.type'
                    $newOmaSetting.displayName = $omaSetting.displayName
                    $newOmaSetting.description = $omaSetting.description
                    $newOmaSetting.omaUri = $omaSetting.omaUri
                    $newOmaSetting.value = $omaSettingValue
                    $newOmaSetting.isEncrypted = $false
                    $newOmaSetting.secretReferenceValueId = $null
                    
                    # Add the unencrypted OMA setting to the array
                    $newOmaSettings += $newOmaSetting
                }
                
                # Replace all encrypted OMA settings with the unencrypted versions
                $deviceConfiguration.omaSettings = @()
                $deviceConfiguration.omaSettings += $newOmaSettings
            }
            
            # Export profile to JSON with full depth to capture all nested properties
            $deviceConfiguration | ConvertTo-Json -Depth 100 | Out-File -LiteralPath $filePath -Encoding UTF8
            
            # Add to results with profile details
            $backupResults += [PSCustomObject]@{
                "Profile Name" = $deviceConfiguration.displayName
                "Profile ID"   = $deviceConfiguration.id
                "Profile Type" = $deviceConfiguration.'@odata.type' -replace '#microsoft.graph.', ''
                "File Name"    = "$fileName.json"
                "Status"       = "Success"
            }
            
            Write-Verbose "Backed up: $($deviceConfiguration.displayName)"
        }
        
        # Complete the progress bar
        Write-Progress -Activity "Backing up Device Configuration Profiles" -Completed
        
        # Display results summary
        Write-Host ""
        Write-Host "Backup Summary"
        Write-Host "=============================================================="
        Write-Host "Total profiles backed up: $($backupResults.Count)"
        Write-Host "Backup location: $backupPath"
        Write-Host ""
        Write-Host "Backed up policies:"
        
        # Display the backup results in a clean table format
        $backupResults | Format-Table -Property "Profile Name", "Profile Type", "File Name" -AutoSize
        
        Write-Host "Backup completed successfully!"
        Write-Host ""
        
        # Return the results object for further processing if needed
        # return $backupResults
        
    }
    catch {
        Write-Host ""
        Write-Host "ERROR: Backup failed"
        Write-Host "Error details: $($_.Exception.Message)"
        throw
    }
}
