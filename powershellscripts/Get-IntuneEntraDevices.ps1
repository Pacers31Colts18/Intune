function Get-IntuneEntraDevices {

    [CmdletBinding()]
    Param(
        [string]$OutputDir
    )

    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($OutputDir.Length -eq 0) { $OutputDir = $pwd }
    $OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    $graphApiVersion = "beta"
    $resultsArray = @()

    if ($null -eq (Get-MgContext)) {
        Connect-MgGraph
        Break
    }

    #region Gather Entra Devices
    $entraDevices = @()
    Write-Output "Gathering Entra Devices...."
    $uri = "https://graph.microsoft.com/$graphApiVersion/devices?`$select=DisplayName,TrustType,EnrollmentType,Id,DeviceId,registrationDateTime,approximateLastSignInDateTime&`$top=999"
    do {
        $response = Invoke-MgGraphRequest -Method GET -Uri $uri
        if ($response.value.Count -gt 0) { $entraDevices += $response.value }
        $uri = $response.'@odata.nextLink'
    } while ($uri)
    Write-Output "Entra: Found $($entraDevices.Count) devices."
    #endregion

    #region Gather Intune Devices
    $intuneDevices = @()
    Write-Output "Gathering Intune Devices...."
    $uri = "https://graph.microsoft.com/$graphApiVersion/deviceManagement/managedDevices?`$top=999"
    do {
        $response = Invoke-MgGraphRequest -Method GET -Uri $uri
        if ($response.value.Count -gt 0) { $intuneDevices += $response.value }
        $uri = $response.'@odata.nextLink'
    } while ($uri)
    Write-Output "Intune: Found $($intuneDevices.Count) managed devices."
    #endregion

    # Primary index by azureADDeviceId (MDM/co-managed devices)
    $intuneIndex = @{}
    # Secondary index by name (Tenant Attach - no valid azureADDeviceId)
    $intuneByName = @{}

    foreach ($d in $intuneDevices) {
        if ($d.azureADDeviceId -and $d.azureADDeviceId -ne '00000000-0000-0000-0000-000000000000') {
            $intuneIndex[$d.azureADDeviceId] = $d
        }
        elseif ($d.deviceName) {
            $intuneByName[$d.deviceName.ToLower()] = $d
        }
    }

    foreach ($entraDevice in $entraDevices) {
        $intuneMatch = $intuneIndex[$entraDevice.deviceId]

        # Fallback for Tenant Attach devices with no azureADDeviceId
        if (-not $intuneMatch -and $entraDevice.displayName) {
            $intuneMatch = $intuneByName[$entraDevice.displayName.ToLower()]
        }

        $resultsArray += [PSCustomObject]@{
            DisplayName                        = $entraDevice.displayName
            EntraObjectId                      = $entraDevice.id
            EntraDeviceId                      = $entraDevice.deviceId
            EntraRegistrationDateTime          = $entraDevice.registrationDateTime
            EntraApproximateLastSignInDateTime = $entraDevice.approximateLastSignInDateTime
            TrustType                          = $entraDevice.trustType
            EnrollmentType                     = $entraDevice.enrollmentType
            IntuneManaged                      = if ($intuneMatch) { "Yes" } else { $null }
            ManagementAgent                    = if ($intuneMatch) { $intuneMatch.managementAgent } else { $null }
            IntuneDeviceId                     = if ($intuneMatch) { $intuneMatch.id } else { $null }
            LastSyncDateTime                   = if ($intuneMatch) { $intuneMatch.lastSyncDateTime } else { $null }
        }
    }
    #endregion

    $resultsArray | Export-Csv -Path $OutputFilePath -NoTypeInformation
    Write-Output "Results exported to $OutputFilePath"
}
