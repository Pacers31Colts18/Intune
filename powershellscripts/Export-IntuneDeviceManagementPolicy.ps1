function Export-IntuneDeviceManagementPolicy {
    <#
    .SYNOPSIS
        Exports Intune policies to JSON files.
    .DESCRIPTION
        Retrieves the policy configuration and settings for a given policy from Microsoft Graph
        and writes them to a JSON file in the specified output folder. Returns a result object
        with FilePath and JsonData properties.

        For deviceHealthScripts, DetectionScript.ps1 and RemediationScript.ps1 are also saved
        to a subfolder named after the policy.
        For deviceShellScripts, the script content is decoded and saved as a .sh file alongside
        the JSON in a subfolder named after the policy.
        For deviceManagementScripts, the script content is saved using the fileName property
        from the policy JSON to a subfolder named after the policy.

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

    $graphApiVersion = "beta"

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
            $PolicyResponse = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/$graphApiVersion/deviceManagement/$Endpoint/$PolicyId" -ErrorAction Stop
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
        $Uri = "$graphApiVersion/deviceManagement/$Endpoint"

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

        # region configurationPolicies
        if ($NeedsSettingsExpand) {
            try {
                $SettingsResponse = Invoke-MgGraphRequest -Method GET -Uri "$graphApiVersion/deviceManagement/$Endpoint/$($Policy.id)/settings" -ErrorAction Stop
                $Policy.settings = if ($SettingsResponse.value) { $SettingsResponse.value } else { @($SettingsResponse) }
            }
            catch {
                Write-Warning "Failed to retrieve settings for policy '$SafeName': $_"
            }
        }
        #endregion

        # region deviceHealthScripts
        if ($Endpoint -eq 'deviceHealthScripts') {
            $ScriptFolder = Join-Path $OutputFolder $SafeName
            if (-not (Test-Path $ScriptFolder)) {
                New-Item -ItemType Directory -Path $ScriptFolder -Force | Out-Null
            }

            if ($Policy.detectionScriptContent) {
                $DetectionPath = Join-Path $ScriptFolder "DetectionScript.ps1"
                [System.IO.File]::WriteAllBytes($DetectionPath, [Convert]::FromBase64String($Policy.detectionScriptContent))
                Write-Host "Detection script saved to '$DetectionPath'."
            }
            if ($Policy.remediationScriptContent) {
                $RemediationPath = Join-Path $ScriptFolder "RemediationScript.ps1"
                [System.IO.File]::WriteAllBytes($RemediationPath, [Convert]::FromBase64String($Policy.remediationScriptContent))
                Write-Host "Remediation script saved to '$RemediationPath'."
            }

            $FilePath = Join-Path $ScriptFolder "$SafeName-$SafeId.json"
        }
        #endregion

        # #region deviceShellScripts
        elseif ($Endpoint -eq 'deviceShellScripts') {
            $ScriptFolder = Join-Path $OutputFolder $SafeName
            if (-not (Test-Path $ScriptFolder)) {
                New-Item -ItemType Directory -Path $ScriptFolder -Force | Out-Null
            }

            try {
                $Policy = Invoke-MgGraphRequest -Method GET -Uri "$graphApiVersion/deviceManagement/deviceShellScripts/$($Policy.id)" -ErrorAction Stop
            }
            catch {
                Write-Warning "Failed to retrieve full details for shell script '$SafeName': $_"
                continue
            }

            $SafeName = ($Policy.displayName).Split([IO.Path]::GetInvalidFileNameChars()) -join '_'

            if ($Policy.scriptContent) {
                $ShPath = Join-Path $ScriptFolder "$SafeName.sh"
                $ScriptText = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($Policy.scriptContent))
                $ScriptText | Out-File -LiteralPath $ShPath -Encoding UTF8
                Write-Host "Shell script saved to '$ShPath'."
            }

            $FilePath = Join-Path $ScriptFolder "$SafeName.json"
        }
        #endregion

        #region deviceManagementScripts
        elseif ($Endpoint -eq 'deviceManagementScripts') {
            $ScriptFolder = Join-Path $OutputFolder $SafeName
            if (-not (Test-Path $ScriptFolder)) {
                New-Item -ItemType Directory -Path $ScriptFolder -Force | Out-Null
            }

            $ScriptContent = $Policy.scriptContent
            $FileName      = $Policy.fileName

            if ($ScriptContent -and $FileName) {
                $ScriptPath = Join-Path $ScriptFolder $FileName
                [System.IO.File]::WriteAllBytes($ScriptPath, [Convert]::FromBase64String($ScriptContent))
                Write-Host "Script saved to '$ScriptPath'."
            }
            else {
                Write-Warning "No scriptContent or fileName found for '$SafeName'. Skipping script export."
            }

            $FilePath = Join-Path $ScriptFolder "$SafeName-$SafeId.json"
        }

        else {
            $FilePath = Join-Path $OutputFolder "$SafeName-$SafeId.json"
        }
        #endregion

        $Json = $Policy | ConvertTo-Json -Depth 100
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
