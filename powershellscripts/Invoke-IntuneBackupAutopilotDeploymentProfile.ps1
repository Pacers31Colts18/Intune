<#
.SYNOPSIS
    Backup Intune Autopilot Deployment Profiles

.DESCRIPTION
    This script backs up all Intune Windows Autopilot Deployment Profiles as individual 
    JSON files. Each profile is exported with its complete configuration to enable 
    restoration or migration scenarios.

.PARAMETER Path
    Specifies the root directory path where backup files will be stored.
    An "Autopilot Deployment Profiles" subdirectory will be created automatically.

.PARAMETER ApiVersion
    Specifies the Microsoft Graph API version to use.
    Valid values are "v1.0" and "Beta". Default is "Beta".

.EXAMPLE
    Invoke-IntuneBackupAutopilotDeploymentProfile -Path "C:\IntuneBackups"
    
    Backs up all Autopilot Deployment profiles to C:\IntuneBackups\Autopilot Deployment Profiles\

.EXAMPLE
    Invoke-IntuneBackupAutopilotDeploymentProfile -Path "C:\Backups" -ApiVersion "v1.0"
    
    Backs up all Autopilot Deployment profiles using the beta API endpoint

.NOTES
    Requirements:
    - Microsoft.Graph PowerShell module
    - Appropriate permissions in Microsoft Graph (DeviceManagementServiceConfig.Read.All)
    - Connected to Microsoft Graph (Connect-MgGraph)
    
    The script will fail if duplicate profile names are detected and will provide
    detailed information about which profiles need to be renamed.

.LINK
    https://docs.microsoft.com/en-us/graph/api/intune-enrollment-windowsautopilotdeploymentprofile-list

.AUTHOR
    Generated for Intune Configuration Management

.VERSION
    2.0
#>

function Invoke-IntuneBackupAutopilotDeploymentProfile {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path,
        
        [Parameter(Mandatory = $false)]
        [ValidateSet("v1.0", "Beta")]
        [string]$ApiVersion = "Beta"
    )
    
    Write-Host "=============================================================="
    Write-Host "Starting Intune Autopilot Deployment Profile Backup..."
    Write-Host "=============================================================="
    
    try {
        # Get all Windows Autopilot Deployment Profiles from Microsoft Graph
        Write-Verbose "Retrieving Autopilot Deployment profiles from Microsoft Graph API..."
        $winAutopilotDeploymentProfiles = Invoke-MgGraphRequest -Uri "https://graph.microsoft.com/$ApiVersion/deviceManagement/windowsAutopilotDeploymentProfiles" -OutputType PSObject | Select-Object -ExpandProperty Value
        
        $profileNames = $winAutopilotDeploymentProfiles | ForEach-Object { $_.displayName }
        Write-Host "Found $($profileNames.count) Autopilot Deployment profiles"
        
        if ($profileNames.count -eq 0) {
            Write-Warning "No Autopilot Deployment profiles found. Backup completed with no files created."
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
                $duplicatePolicies = $winAutopilotDeploymentProfiles | Where-Object { $_.displayName -eq $duplicateName }
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
        $backupPath = Join-Path $Path "Autopilot Deployment Profiles"
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
        
        foreach ($winAutopilotDeploymentProfile in $winAutopilotDeploymentProfiles) {
            $currentCount++
            Write-Progress -Activity "Backing up Autopilot Deployment Profiles" `
                          -Status "Processing: $($winAutopilotDeploymentProfile.displayName)" `
                          -PercentComplete (($currentCount / $winAutopilotDeploymentProfiles.count) * 100)
            
            # Create safe filename by removing invalid characters
            $fileName = ($winAutopilotDeploymentProfile.displayName).Split([IO.Path]::GetInvalidFileNameChars()) -join '_'
            $filePath = Join-Path $backupPath "$fileName.json"
            
            # Retrieve the complete deployment profile with all details
            Write-Verbose "Retrieving full details for profile: $($winAutopilotDeploymentProfile.displayName)"
            $winAutopilotDeploymentProfileObject = Invoke-MgGraphRequest -Uri "https://graph.microsoft.com/$ApiVersion/deviceManagement/windowsAutopilotDeploymentProfiles/$($winAutopilotDeploymentProfile.id)"
            
            # Export profile to JSON with full depth to capture all nested properties
            $winAutopilotDeploymentProfileObject | ConvertTo-Json -Depth 100 | Out-File -LiteralPath $filePath -Encoding UTF8
            
            # Add to results with profile details
            $backupResults += [PSCustomObject]@{
                "Profile Name" = $winAutopilotDeploymentProfileObject.displayName
                "Profile ID"   = $winAutopilotDeploymentProfileObject.id
                "File Name"    = "$fileName.json"
                "Status"       = "Success"
            }
            
            Write-Verbose "Backed up: $($winAutopilotDeploymentProfileObject.displayName)"
        }
        
        # Complete the progress bar
        Write-Progress -Activity "Backing up Autopilot Deployment Profiles" -Completed
        
        # Display results summary
        Write-Host ""
        Write-Host "Backup Summary"
        Write-Host "=============================================================="
        Write-Host "Total profiles backed up: $($backupResults.Count)"
        Write-Host "Backup location: $backupPath"
        Write-Host ""
        Write-Host "Backed up profiles:"
        
        # Display the backup results in a clean table format
        $backupResults | Format-Table -Property "Profile Name", "File Name" -AutoSize
        
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
