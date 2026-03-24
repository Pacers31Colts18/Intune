function Backup-IntuneGroupPolicyConfigs {
    <#
    .SYNOPSIS
        Backs up Intune Group Policy Configurations to JSON files using Microsoft Graph API.

    .DESCRIPTION
        Exports all Group Policy Configurations (Administrative Templates) from Intune,
        including their definition values and presentation values. Each configuration is
        saved as a separate JSON file. Requires an active Microsoft Graph session
        (Connect-MgGraph) with DeviceManagementConfiguration.Read.All scope.

    .PARAMETER OutputPath
        The directory where backup JSON files will be saved. Defaults to .\IntuneGPBackup.

    .EXAMPLE
        Backup-IntuneGroupPolicyConfigs

    .EXAMPLE
        Backup-IntuneGroupPolicyConfigs -OutputPath "C:\Backups\Intune"
    #>

    [CmdletBinding()]
    param(
        [Parameter()]
        [string]$OutputPath = ".\IntuneGPBackup"
    )

    #paginated Graph request
    function Get-AllGraphResults {
        param(
            [Parameter(Mandatory)]
            [string]$Uri
        )

        $results = @()
        $nextLink = $Uri

        while ($nextLink) {
            $response = Invoke-MgGraphRequest -Method GET -Uri $nextLink -OutputType PSObject
            if ($response.value) {
                $results += $response.value
            }
            $nextLink = $response.'@odata.nextLink'
        }

        return $results
    }

    # Prepare output directory
    $timestamp = Get-Date -Format "yyyy-MM-dd_HHmmss"
    $backupDir = Join-Path $OutputPath $timestamp

    if (-not (Test-Path $backupDir)) {
        New-Item -ItemType Directory -Path $backupDir -Force | Out-Null
    }
    Write-Host "Backup directory: $backupDir" -ForegroundColor Yellow

    # Fetch all Group Policy Configurations
    Write-Host "`nFetching Group Policy Configurations..." -ForegroundColor Yellow

    $gpConfigsUri = "https://graph.microsoft.com/beta/deviceManagement/groupPolicyConfigurations"
    $gpConfigs = Get-AllGraphResults -Uri $gpConfigsUri

    if (-not $gpConfigs -or $gpConfigs.Count -eq 0) {
        Write-Warning "No Group Policy Configurations found."
        return
    }

    Write-Host "Found $($gpConfigs.Count) configuration(s).`n" -ForegroundColor Green

    # Process each configuration
    $summary = @()

    foreach ($config in $gpConfigs) {
        $configId   = $config.id
        $configName = $config.displayName
        $safeName   = $configName -replace '[\\/:*?"<>|]', '_'

        Write-Host "Processing: $configName" -ForegroundColor Cyan

        #region Get definition values
        $defValuesUri = "$gpConfigsUri/$configId/definitionValues?`$expand=definition"
        $definitionValues = Get-AllGraphResults -Uri $defValuesUri
        #endregion

        #region Get defintion presentation values
        $enrichedDefinitionValues = @()

        foreach ($defValue in $definitionValues) {
            $defValueId = $defValue.id

            $presValuesUri = "$gpConfigsUri/$configId/definitionValues/$defValueId/presentationValues?`$expand=presentation"
            try {
                $presentationValues = Get-AllGraphResults -Uri $presValuesUri
            }
            catch {
                Write-Warning "  Could not retrieve presentation values for definition value $defValueId : $_"
                $presentationValues = @()
            }

            $defValue | Add-Member -NotePropertyName "presentationValues" -NotePropertyValue $presentationValues -Force
            $enrichedDefinitionValues += $defValue
        }
        #endregion

        #Build the backup object
        $backupObject = [ordered]@{
            id                   = $config.id
            displayName          = $config.displayName
            description          = $config.description
            createdDateTime      = $config.createdDateTime
            lastModifiedDateTime = $config.lastModifiedDateTime
            roleScopeTagIds      = $config.roleScopeTagIds
            definitionValues     = $enrichedDefinitionValues
            backupTimestamp      = (Get-Date -Format "o")
        }

        #region Export to JSON
        $fileName = "${safeName}_${configId}.json"
        $filePath = Join-Path $backupDir $fileName

        $backupObject | ConvertTo-Json -Depth 20 | Out-File -FilePath $filePath -Encoding utf8

        Write-Host "  Saved: $fileName" -ForegroundColor DarkGreen
        Write-Host "  Definition values: $($enrichedDefinitionValues.Count)" -ForegroundColor DarkGray

        $summary += [PSCustomObject]@{
            Name             = $configName
            DefinitionValues = $enrichedDefinitionValues.Count
            File             = $fileName
        }
    }

    # Write manifest
    $manifest = [ordered]@{
        backupDate     = (Get-Date -Format "o")
        totalConfigs   = $gpConfigs.Count
        configurations = $summary | ForEach-Object {
            [ordered]@{
                name             = $_.Name
                definitionValues = $_.DefinitionValues
                fileName         = $_.File
            }
        }
    }

    $manifestPath = Join-Path $backupDir "_manifest.json"
    $manifest | ConvertTo-Json -Depth 10 | Out-File -FilePath $manifestPath -Encoding utf8

    # Summary
    Write-Host "`n=== Backup Complete ===" -ForegroundColor Cyan
    Write-Host "Total configurations backed up: $($gpConfigs.Count)" -ForegroundColor Green
    Write-Host "Backup location: $backupDir" -ForegroundColor Green
    Write-Host "Manifest: $manifestPath`n" -ForegroundColor Green

    $summary | Format-Table -AutoSize
}
