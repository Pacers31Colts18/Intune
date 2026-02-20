function Invoke-IntuneOnDemandProactiveRemediation {
<#
.Synopsis
Runs Intune Remedations based off a CSV file. Columns must include DeviceName, ScriptName
.Description
Finds the Intune Device and Script Name by batches of 20, and then initiates an on demand remediation.
.Example
Invoke-IntuneOnDemandProactiveRemediation -inputfilePath "C:\temp\test.csv"
.NOTES
Graph API Permissions needed:
- DeviceManagementManagedDevices.Read.All
- DeviceManagementScripts.Read.All
- DeviceManagementManagedDevices.PrivilegedOperations.All
#> 
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True)]
        [string]$InputFilePath
    )

    #Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($OutputDir.Length -eq 0) { $OutputDir = $pwd }
    $LogFilePath = "$OutputDir\$FunctionName-$date.log"

    # Check Graph connection
    if ($null -eq (Get-MgContext)) {
        Write-Error "Authentication needed. Please connect to Microsoft Graph."
        return
    }

    # Load CSV
    try {
        $csv = Import-Csv -Path $InputFilePath -ErrorAction Stop
    }
    catch {
        Write-Error "Error importing CSV file: $_"
        return
    }

    #region Build lookup requests
    $lookupRequests = @()
    $id = 1

    foreach ($entry in $csv) {

        # Device lookup
        $lookupRequests += @{
            id     = "$id"
            method = "GET"
            url    = "/deviceManagement/managedDevices?`$filter=deviceName eq '$($entry.DeviceName)'"
        }
        $id++

        # Script lookup
        $lookupRequests += @{
            id     = "$id"
            method = "GET"
            url    = "/deviceManagement/deviceHealthScripts?`$filter=displayName eq '$($entry.ScriptName)'"
        }
        $id++
    }
    #endregion

    #region Batch lookup requests
    $lookupBatches = @()
    $batchSize = 20

    for ($i = 0; $i -lt $lookupRequests.Count; $i += $batchSize) {
        $end = [Math]::Min($i + $batchSize - 1, $lookupRequests.Count - 1)
        $lookupBatches += , ($lookupRequests[$i..$end])
    }

    # Maps to store results
    $deviceMap = @{}
    $scriptMap = @{}
    $batchIndex = 0

    foreach ($batch in $lookupBatches) {
        $responses = Invoke-MgGraphBatchRequest -Requests $batch
        foreach ($response in $responses) {

            # Device lookup
            if ($response.body.'@odata.context' -like "*deviceManagement/managedDevices*") {
                if ($response.body.value) {
                    Write-Output "Device Found: $($response.body.value.deviceName)"
                    Write-Output "Device ID: $($response.body.value.id)"
                    $deviceMap[$response.body.value.deviceName] = $response.body.value.id
                }
                else {
                    Write-Warning "Device not found: $($entry.deviceName)"
                }
            }

            # Script lookup
            if ($response.body.'@odata.context' -like "*deviceManagement/deviceHealthScripts*") {
                if ($response.body.value) {
                    Write-Output "Script Found: $($response.body.value.displayName)"
                    Write-Output "Script ID: $($response.body.value.id)"
                    $scriptMap[$response.body.value.displayName] = $response.body.value.id
                }
                else {
                    Write-Warning "Script not found: $($entry.scriptName)"
                }
            }
        }

        $batchIndex++
    }
    #endregion

    #region Build remediation batch
    $remediationRequests = @()
    $id = 1

    foreach ($entry in $csv) {
        $deviceId = $deviceMap[$entry.DeviceName]
        $scriptId = $scriptMap[$entry.ScriptName]

        if (-not $deviceId) {
            Write-Error "Device not found: $($entry.DeviceName)"
            continue
        }
        if (-not $scriptId) {
            Write-Error "Script not found: $($entry.ScriptName)"
            continue
        }

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

        $id++
    }

    # Split remediation into batches of 20
    $remediationBatches = @()
    for ($i = 0; $i -lt $remediationRequests.Count; $i += 20) {
        $end = [Math]::Min($i + 19, $remediationRequests.Count - 1)
        $remediationBatches += , ($remediationRequests[$i..$end])
    }

    # Execute remediation batches
    $batchIndex = 0
    foreach ($batch in $remediationBatches) {
        $responses = Invoke-MgGraphBatchRequest -Requests $batch
        $batchIndex++
    }
    #endregion

    # Build verification batch
    $verifyRequests = @()
    $id = 1

    foreach ($entry in $csv) {
        $deviceId = $deviceMap[$entry.DeviceName]

        if ($deviceId) {
            $verifyRequests += @{
                id     = "$id"
                method = "GET"
                url    = "/deviceManagement/managedDevices/$deviceId"
            }
            $id++
        }
    }

    # Split into batches of 20
    $verifyBatches = @()
    for ($i = 0; $i -lt $verifyRequests.Count; $i += 20) {
        $end = [Math]::Min($i + 19, $verifyRequests.Count - 1)
        $verifyBatches += , ($verifyRequests[$i..$end])
    }

    # Execute verification batches
    $batchIndex = 0
    foreach ($batch in $verifyBatches) {
        $responses = Invoke-MgGraphBatchRequest -Requests $batch

        foreach ($response in $responses) {

            if ($response.status -eq 200) {

                $result = $response.body.deviceActionResults

                if ($result) {
                    Write-Output "$($entry.DeviceName): Script executed at $($result.startDateTime)"
                }
                else {
                    Write-Warning "No deviceActionResults returned for request ID $($response.id)"
                }
            }
            else {
                Write-Error "Verification failed for request ID $($response.id)"
            }
        }

        $batchIndex++
    }

}
