function Export-IntuneGroupAssignmentsForAdministrativeUnit {
<#
.SYNOPSIS
Exports all Intune policy assignments for groups within a specified Administrative Unit (AU).
.DESCRIPTION
This function queries Microsoft Graph to retrieve all groups assigned to a given 
Administrative Unit (AU), then enumerates all major Intune policy types to determine 
which policies are assigned to those groups.
.PARAMETER AdministrativeUnit
The display name of the Administrative Unit to query. This must match exactly.
.PARAMETER Scope
Controls which groups are included in the output.
- All         : Include all groups in the AU
- Assigned    : Only include groups with at least one Intune assignment
- Unassigned  : Only include groups with no Intune assignments
.EXAMPLE
Export-IntuneGroupAssignmentsForAdministrativeUnit -AdministrativeUnit "West Coast" -Scope All
.OUTPUTS
CSV file written to the current directory unless $OutputDir is set.
#>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$AdministrativeUnit,
        [ValidateSet('All', 'Assigned', 'Unassigned')]
        [string]$Scope = 'All'
    )

    # Microsoft Graph Connection check
    if (-not (Get-MgContext)) {
        Write-Error "Authentication needed. Please call Connect-g46GraphAppDelegated."
        return
    }

    #region Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($outputdir.Length -eq 0) { $outputdir = $pwd }
    $OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    $results = @()
    $graphApiversion = "beta"
    #endregion

    # Resources
    $resources = @(
        @{ Name = 'Configuration Policy'; Uri = 'deviceManagement/configurationPolicies'; AssignUri = 'deviceManagement/configurationPolicies/{id}/assignments' },
        @{ Name = 'Device Compliance Policy'; Uri = 'deviceManagement/deviceCompliancePolicies'; AssignUri = 'deviceManagement/deviceCompliancePolicies/{id}/assignments' },
        @{ Name = 'Device Configuration'; Uri = 'deviceManagement/deviceConfigurations'; AssignUri = 'deviceManagement/deviceConfigurations/{id}/assignments' },
        @{ Name = 'Device Health Script'; Uri = 'deviceManagement/deviceHealthScripts'; AssignUri = 'deviceManagement/deviceHealthScripts/{id}/assignments' },
        @{ Name = 'Group Policy Configuration'; Uri = 'deviceManagement/groupPolicyConfigurations'; AssignUri = 'deviceManagement/groupPolicyConfigurations/{id}/assignments' },
        @{ Name = 'Windows Autopilot'; Uri = 'deviceManagement/windowsAutopilotDeploymentProfiles'; AssignUri = 'deviceManagement/windowsAutopilotDeploymentProfiles/{id}/assignments' },
        @{ Name = 'Device Enrollment Configuration'; Uri = 'deviceManagement/deviceEnrollmentConfigurations'; AssignUri = 'deviceManagement/deviceEnrollmentConfigurations/{id}/assignments' },
        @{ Name = 'Device Shell Scripts'; Uri = 'deviceManagement/deviceShellScripts'; AssignUri = 'deviceManagement/deviceShellScripts/{id}/assignments' },
        @{ Name = 'Device Management Scripts'; Uri = 'deviceManagement/deviceManagementScripts'; AssignUri = 'deviceManagement/deviceManagementScripts/{id}/assignments' }
    )

    #region Get AU
    $au = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/$graphApiVersion/directory/administrativeUnits?`$filter=displayName eq '$AdministrativeUnit'"
    if (-not $au.value) {
        Write-Error "Administrative Unit '$AdministrativeUnit' not found."
        return
    }
    $auId = $au.value[0].id
    #endregion

    #region Get Groups in AU
    $groups = @()
    $uri = "https://graph.microsoft.com/$graphApiVersion/directory/administrativeUnits/$auId/members"
    do {
        $response = Invoke-MgGraphRequest -Method GET -Uri $Uri

        if ($response.value -and $response.value.Count -gt 0) {
            $groups += $response.value
        }
        elseif ($response -and $response.PSObject.Properties.Name -ne '@odata.context') {
            $groups += $response
        }

        $Uri = $response.'@odata.nextLink'
    } while ($Uri)

    $groups = $groups | Where-Object { $_.'@odata.type' -eq '#microsoft.graph.group' }

    if (-not $groups) {
        Write-Warning "No groups found in Administrative Unit."
        return
    }

    $groupMap = @{}
    foreach ($g in $groups) {
        $groupMap[$g.id] = @{
            GroupId   = $g.id
            GroupName = $g.displayName
            Assigned  = $false
            Items     = @()
        }
    }
    #endregion

    # Process each resource
    foreach ($resource in $resources) {
        Write-Output "Scanning $($resource.Name)..."

        # Get objects
        $objects = @()
        $uri = "https://graph.microsoft.com/$graphApiVersion/$($resource.Uri)"
        do {
            $response = Invoke-MgGraphRequest -Method GET -Uri $Uri

            # Normalize response
            if ($response.value -and $response.value.Count -gt 0) {
                $objects += $response.value
            }
            elseif ($response -and $response.PSObject.Properties.Name -ne '@odata.context') {
                $objects += $response
            }

            $Uri = $response.'@odata.nextLink'
        } while ($Uri)

        if (-not $objects) { continue }

        # Normalize names
        foreach ($obj in $objects) {
            $name = $obj.displayName
            if (-not $name) { $name = $obj.name }
            if (-not $name) { $name = $obj.description }
            if (-not $name) { $name = "" }

            $obj | Add-Member -NotePropertyName NormalizedName -NotePropertyValue $name -Force
        }

        # Batching
        $batchSize = 20
        $chunks = for ($i = 0; $i -lt $objects.Count; $i += $batchSize) {
            , $objects[$i..([Math]::Min($i + $batchSize - 1, $objects.Count - 1))]
        }

        foreach ($chunk in $chunks) {

            $requests = @()
            $i = 1

            foreach ($obj in $chunk) {
                if (-not $obj) { continue }

                $assignUrl = $resource.AssignUri.Replace("{id}", $obj.id)
                $requests += @{
                    id        = "$i"
                    method    = 'GET'
                    url       = "/$assignUrl"
                    ObjectRef = $obj
                }
                $i++
            }

            if ($requests.Count -eq 0) { continue }

            $responses = Invoke-MgGraphBatchRequest -Requests $requests

            foreach ($req in $requests) {
                $response = $responses | Where-Object { $_.id -eq $req.id }
                if (-not $response) { continue }

                $obj = $req.ObjectRef
                if (-not $obj) { continue }

                if ($response.status -ne 200) {
                    continue
                }

                $assignments = $response.body.value
                if (-not $assignments) { continue }

                foreach ($assignment in $assignments) {
                    if ($assignment.target.'@odata.type' -eq '#microsoft.graph.groupAssignmentTarget') {
                        $gid = $assignment.target.groupId
                        if ($gid -and $groupMap.ContainsKey($gid)) {
                            $groupMap[$gid].Assigned = $true
                            $groupMap[$gid].Items += [pscustomobject]@{
                                PolicyType = $resource.Name
                                PolicyId   = $obj.id
                                PolicyName = $obj.NormalizedName
                            }
                        }
                    }
                }
            }
        }
    }

    # Build results
    foreach ($g in $groupMap.Values) {
        if (
            $Scope -eq 'All' -or
            ($Scope -eq 'Assigned' -and $g.Assigned) -or
            ($Scope -eq 'Unassigned' -and -not $g.Assigned)
        ) {
            if ($g.Items.Count -gt 0) {
                foreach ($item in $g.Items) {
                    $results += [pscustomobject]@{
                        GroupId    = $g.GroupId
                        GroupName  = $g.GroupName
                        Assigned   = $true
                        PolicyType = $item.PolicyType
                        PolicyId   = $item.PolicyId
                        PolicyName = $item.PolicyName
                    }
                }
            }
            else {
                $results += [pscustomobject]@{
                    GroupId    = $g.GroupId
                    GroupName  = $g.GroupName
                    Assigned   = $false
                    PolicyType = ''
                    PolicyId   = ''
                    PolicyName = ''
                }
            }
        }
    }

    #region Export results
    if ($results.Count -gt 0) {
        $results | Sort-Object GroupName | Export-Csv -Path $outputFilePath -NoTypeInformation
        Write-Output "Output file = $outputFilePath"
    }
    else {
        Write-Warning "No output file created."
    }
    #endregion
}
