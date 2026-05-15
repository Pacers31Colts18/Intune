function Export-g46IntuneDeviceManagementPolicySummary {
    [cmdletbinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateSet('All', 'devicehealthScripts', 'deviceConfigurations', 'deviceCompliancePolicies',
            'deviceManagementScripts', 'deviceShellScripts', 'configurationPolicies',
            'groupPolicyConfigurations', 'windowsAutopilotDeploymentProfiles', 'deviceEnrollmentConfigurations')]
        [string]$graphendpoint
    )

    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($OutputDir.Length -eq 0) { $OutputDir = $pwd }
    $OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    $graphapiVersion = "beta"
    $resultsArray = @()

    if ($null -eq (Get-MgContext)) {
        "Not authenticated to Microsoft Graph, please authenticate"
        return
    }

    $allEndpoints = @(
        'devicehealthScripts', 'deviceConfigurations', 'deviceCompliancePolicies',
        'deviceManagementScripts', 'deviceShellScripts', 'configurationPolicies',
        'groupPolicyConfigurations', 'windowsAutopilotDeploymentProfiles', 'deviceEnrollmentConfigurations'
    )

    $endpointsToProcess = if ($graphendpoint -eq 'All') { $allEndpoints } else { @($graphendpoint) }

    foreach ($endpoint in $endpointsToProcess) {
        $uri = "https://graph.microsoft.com/$graphapiVersion/deviceManagement/$endpoint"
        $policies = @()
        try {
            do {
                $response = Invoke-MgGraphRequest -Method GET -Uri $uri
                $policies += $response.value
                $uri = $response.'@odata.nextLink'
            } while ($uri)

            foreach ($p in $policies) {
                $resultsArray += [PSCustomObject]@{
                    PolicyType           = $endpoint
                    Name                 = if ($p.Name) { $p.Name } else { $p.displayName }
                    CreatedDateTime      = $p.createdDateTime
                    LastModifiedDateTime = $p.lastmodifiedDateTime
                    Description          = $p.description
                    Id                   = $p.id
                    Platform             = $p.platform
                    SettingCount         = $p.settingCount
                }
            }
        }
        catch {
            Write-Error $_
        }
    }

    if ($resultsArray.Count -ge 1) {
        $resultsArray | Sort-Object PolicyType, Platform | Export-Csv -Path $outputfilepath -NoTypeInformation
    }

    if (Test-Path $outputfilepath) {
        Write-Output "Output file = $outputfilepath."
    }
    else {
        Write-Warning "No output file created."
    }
}
