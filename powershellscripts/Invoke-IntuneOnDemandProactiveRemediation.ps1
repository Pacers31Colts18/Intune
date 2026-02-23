function Invoke-IntuneOnDemandProactiveRemediation {
<#
.SYNOPSIS
Runs Intune Remediations based off a CSV file. Columns must include DeviceName, ScriptName

.DESCRIPTION
Finds Intune Devices and Script Names in batches of 20,
then initiates on-demand proactive remediations.
Handles multiple devices or scripts with identical names.

.EXAMPLE
Invoke-IntuneOnDemandProactiveRemediation -InputFilePath "C:\temp\test.csv"

.NOTES
Graph API Permissions needed:
- DeviceManagementManagedDevices.Read.All
- DeviceManagementScripts.Read.All
- DeviceManagementManagedDevices.PrivilegedOperations.All
#>

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $False)]
        [string]$InputFilePath = (Read-Host -Prompt 'Enter the path to the input file')
    )

    # Ensure Graph connection
    if ($null -eq (Get-MgContext)) {
        Write-Error "Authentication needed. Please connect to Microsoft Graph."
        return
    }

    #Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($OutputDir.Length -eq 0) { $OutputDir = $pwd }
    $LogFilePath = "$OutputDir\$FunctionName-$date.log"
    $graphApiVersion = "beta"


    # Import CSV
    try {
        $csv = Import-Csv -Path $InputFilePath -ErrorAction Stop
    }
    catch {
        Write-Error "Error importing CSV file: $_"
        return
    }

    #region Find Devices and Scripts
    $lookupRequests = @()
    $id = 1

    foreach ($entry in $csv) {

        $escapedDeviceName = $entry.DeviceName.Replace("'", "''")
        $escapedScriptName = $entry.ScriptName.Replace("'", "''")

        # Device lookup
        $lookupRequests += @{
            id     = "$id"
            method = "GET"
            url    = "/deviceManagement/managedDevices?`$filter=deviceName eq '$escapedDeviceName'"
        }
        $id++

        # Script lookup
        $lookupRequests += @{
            id     = "$id"
            method = "GET"
            url    = "/deviceManagement/deviceHealthScripts?`$filter=displayName eq '$escapedScriptName'"
        }
        $id++
    }

    # Split into batches of 20
    $lookupBatches = @()
    for ($i = 0; $i -lt $lookupRequests.Count; $i += 20) {
        $end = [Math]::Min($i + 19, $lookupRequests.Count - 1)
        $lookupBatches += , ($lookupRequests[$i..$end])
    }

    $deviceMap = @{}
    $scriptMap = @{}

    foreach ($batch in $lookupBatches) {

        $responses = Invoke-g46MgGraphBatchRequest -Requests $batch

        foreach ($response in $responses) {

            # Device lookup
            if ($response.body.'@odata.context' -like "*managedDevices*") {

                foreach ($device in $response.body.value) {

                    if (-not $deviceMap.ContainsKey($device.deviceName)) {
                        $deviceMap[$device.deviceName] = @()
                    }

                    $deviceMap[$device.deviceName] += $device.id
                    Write-Output "Device Found: $($device.deviceName) | $($device.id)"
                }
            }

            # Script lookup
            if ($response.body.'@odata.context' -like "*deviceHealthScripts*") {

                foreach ($script in $response.body.value) {

                    if (-not $scriptMap.ContainsKey($script.displayName)) {
                        $scriptMap[$script.displayName] = @()
                    }

                    $scriptMap[$script.displayName] += $script.id
                    Write-Output "Script Found: $($script.displayName) | $($script.id)"
                }
            }
        }
    }
    #endregion

    #region Remediation requests
    $remediationRequests = @()
    $id = 1
    $remediationMap = @{}

    foreach ($entry in $csv) {

        $deviceIds = $deviceMap[$entry.DeviceName]
        $scriptIds = $scriptMap[$entry.ScriptName]

        if (-not $deviceIds) {
            Write-Warning "Device not found: $($entry.DeviceName)"
            continue
        }

        if (-not $scriptIds) {
            Write-Warning "Script not found: $($entry.ScriptName)"
            continue
        }

        foreach ($deviceId in $deviceIds) {
            foreach ($scriptId in $scriptIds) {

                $body = @{
                    scriptPolicyId = $scriptId
                }

                $remediationRequests += @{
                    id      = "$id"
                    method  = "POST"
                    url     = "/deviceManagement/managedDevices/$deviceId/initiateOnDemandProactiveRemediation"
                    headers = @{ "Content-Type" = "application/json" }
                    body    = $body
                }

                $remediationMap["$id"] = @{
                    DeviceName = $entry.DeviceName
                    DeviceId   = $deviceId
                    ScriptName = $entry.ScriptName
                }

                $id++
            }
        }
    }

    # Split remediation batches
    $remediationBatches = @()
    for ($i = 0; $i -lt $remediationRequests.Count; $i += 20) {
        $end = [Math]::Min($i + 19, $remediationRequests.Count - 1)
        $remediationBatches += , ($remediationRequests[$i..$end])
    }

    foreach ($batch in $remediationBatches) {
        Invoke-g46MgGraphBatchRequest -Requests $batch | Out-Null
    }
    Write-Output "Remediation requests submitted."
    #endregion

    #region Verify
    $verifyRequests = @()
    $verifyMap = @{}
    $id = 1

    foreach ($rem in $remediationMap.Values) {

        $verifyRequests += @{
            id     = "$id"
            method = "GET"
            url    = "/deviceManagement/managedDevices/$($rem.DeviceId)"
        }

        $verifyMap["$id"] = $rem.DeviceName
        $id++
    }

    # Split verification batches
    $verifyBatches = @()
    for ($i = 0; $i -lt $verifyRequests.Count; $i += 20) {
        $end = [Math]::Min($i + 19, $verifyRequests.Count - 1)
        $verifyBatches += , ($verifyRequests[$i..$end])
    }

    foreach ($batch in $verifyBatches) {

        $responses = Invoke-g46MgGraphBatchRequest -Requests $batch

        foreach ($response in $responses) {

            $deviceName = $verifyMap[$response.id]

            if ($response.status -eq 200) {

                $results = $response.body.deviceActionResults |
                           Where-Object { $_.actionName -eq "initiateOnDemandProactiveRemediation" }

                if ($results) {
                    foreach ($result in $results) {
                        Write-Output "$deviceName : Remediation started at $($result.startDateTime)"
                    }
                }
                else {
                    Write-Warning "$deviceName : No remediation action found."
                }
            }
        }
    }
    #endregion
}
