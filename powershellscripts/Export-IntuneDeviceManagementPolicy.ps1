function Export-IntuneDeviceManagementPolicy {
    <#
    .SYNOPSIS
        Exports Intune policies to JSON files.
    .DESCRIPTION
        Retrieves the policy configuration and settings for a given policy from Microsoft Graph
        and writes them to a JSON file in the specified output folder. Returns a result object
        with FilePath and JsonData properties.

        If no PolicyId is specified, all policies from the endpoint are retrieved and
        exported individually.
    .PARAMETER PolicyId
        Optional. The GUID of the Intune policy. If omitted, all policies are exported.
    .PARAMETER OutputFolder
        Optional. Directory to write the JSON file to. Defaults to the current directory.
    .PARAMETER Endpoint
        Mandatory. The graph endpoint to query.
        Possible values:
        deviceHealthScripts
        deviceConfigurations
        deviceCompliancePolicies
        deviceManagementScripts
        deviceShellScripts
        configurationPolicies
        groupPolicyConfigurations
        windowsAutopilotDeploymentProfiles
        deviceEnrollmentConfigurations
    .EXAMPLE
        Export-IntuneDeviceManagementPolicy -PolicyId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -Endpoint configurationPolicies -OutputFolder "C:\temp"
    .EXAMPLE
        Export-IntuneDeviceManagementPolicy -Endpoint deviceConfigurations -OutputFolder "C:\temp"
    .LINK
        https://learn.microsoft.com/en-us/powershell/microsoftgraph/overview
    #>

    [CmdletBinding()]
    param (
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]$PolicyId,
        [Parameter()]
        [string]$OutputFolder = $pwd,
        [Parameter(Mandatory = $true)]
        [ValidateSet('deviceHealthScripts', 'deviceConfigurations', 'deviceCompliancePolicies', 'deviceManagementScripts', 'deviceShellScripts', 'configurationPolicies', 'groupPolicyConfigurations', 'windowsAutopilotDeploymentProfiles', 'deviceEnrollmentConfigurations')]
        [string]$Endpoint
    )

    if (-not (Get-MgContext)) {
        Write-Error "Not connected to Microsoft Graph. Run Connect-MgGraph first."
        return
    }

    if (-not (Test-Path $OutputFolder)) {
        New-Item -ItemType Directory -Path $OutputFolder -Force | Out-Null
    }

    # Create endpoint subfolder
    $OutputFolder = Join-Path $OutputFolder $Endpoint
    if (-not (Test-Path $OutputFolder)) {
        New-Item -ItemType Directory -Path $OutputFolder -Force | Out-Null
    }
    # Build the list of policies to process
    if ($PSBoundParameters.ContainsKey('PolicyId')) {
        try {
            $PolicyResponse = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/beta/deviceManagement/$Endpoint/$PolicyId" -ErrorAction Stop
        }
        catch {
            Write-Error "Policy '$PolicyId' not found in tenant: $_"
            return
        }
        $Policies = @($PolicyResponse)
    }
    else {
        Write-Verbose "No PolicyId specified — retrieving all policies from '$Endpoint'."

        $Policies = [System.Collections.Generic.List[object]]::new()
        $Uri = "https://graph.microsoft.com/beta/deviceManagement/$Endpoint"

        do {
            try {
                $PageResponse = Invoke-MgGraphRequest -Method GET -Uri $Uri -ErrorAction Stop
            }
            catch {
                Write-Error "Failed to retrieve policies from '$Endpoint': $_"
                return
            }

            $Page = if ($PageResponse.value) { $PageResponse.value } else { @($PageResponse) }
            foreach ($Policy in $Page) { $Policies.Add($Policy) }

            $Uri = $PageResponse.'@odata.nextLink'
        } while ($Uri)
    }

    # For configurationPolicies, settings are on a separate endpoint and need to be expanded
    $NeedsSettingsExpand = $Endpoint -eq 'configurationPolicies'

    $Results = [System.Collections.Generic.List[PSCustomObject]]::new()

    foreach ($Policy in $Policies) {
        $SafeId = $Policy.id -replace '[\\/:*?"<>|]', '_'

        if ($Policy.displayName) {
            $SafeName = $Policy.displayName -replace '[\\/:*?"<>|]', '_'
        }
        elseif ($Policy.name) {
            $SafeName = $Policy.name -replace '[\\/:*?"<>|]', '_'
        }
        else {
            $SafeName = $SafeId
        }

        Write-Verbose "Processing policy: $SafeName"

        # configurationPolicies stores settings separately — fetch and embed them
        if ($NeedsSettingsExpand) {
            try {
                $SettingsResponse = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/beta/deviceManagement/$Endpoint/$($Policy.id)/settings" -ErrorAction Stop
                $Policy.settings = if ($SettingsResponse.value) { $SettingsResponse.value } else { @($SettingsResponse) }
            }
            catch {
                Write-Warning "Failed to retrieve settings for policy '$SafeName': $_"
            }
        }

        $Json = $Policy | ConvertTo-Json -Depth 100
        $FilePath = Join-Path $OutputFolder "$SafeName-$SafeId.json"

        $Json | Set-Content -Path $FilePath -Encoding UTF8 -Force
        Write-Host "Policy exported to '$FilePath'."

        $Results.Add([PSCustomObject]@{
            FilePath = $FilePath
            JsonData = $Json
        })
    }

    if ($Results.Count -eq 1) { return $Results[0] }
    return $Results
}
