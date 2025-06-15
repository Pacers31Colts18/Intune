function Add-IntuneSettingsCatalogAssignments {
    <#
    .SYNOPSIS
    Assigns Intune Settings Catalog assignments from a CSV file to allow bulk assignments. 
    Headers for CSV file must include groupId, groupName, policyName, policyId, AssignmentType, FilterName, FilterType
    AssignmentType must be one of #microsoft.graph.groupAssignmentTarget, #microsoft.graph.allDevicesAssignmentTarget, #microsoft.graph.allUsersAssignmentTarget, #microsoft.graph.exclusionGroupAssignmentTarget
    GroupId = Entra Group Id
    GroupName = Entra Group Name
    PolicyName = Intune Settings Catalog Policy Name
    PolicyId = Intune Settings Catalog Policy Id
    FilterName = Intune filter name
    FilterType = Include/Exclude
    .DESCRIPTION
    Assigns Intune Settings Catalog assignments from a CSV file to allow bulk assignments. 
    .EXAMPLE
    Add-IntuneSettingsCatalogAssignments -inputfilepath c:\users\jlove\inputfile.csv -apiversion Beta
    Add-IntuneSettingsCatalogAssignments -inputfilepath c:\users\jlove\inputfile.csv -apiversion v1.0
    Add-IntuneSettingsCatalogAssignments -inputfilepath c:\users\jlove\inputfile.csv
    .NOTES
    Created by: Joe Loveless
    Date: 4/16/2025

    .PARAMETER Scope
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $True)]
        [string]$InputFilePath = (Read-Host -Prompt 'Enter the path to the input file')

    )

    # Microsoft Graph Connection check
    if ($null -eq (Get-MgContext)) {
        Write-Error "Authentication needed."
        Break
    }

    #region Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($outputdir.Length -eq 0) { $outputdir = $pwd }
    $OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    $LogFilePath = "$OutputDir\$FunctionName-$date.log"
    $ErrorActionPreference = "Ignore"
    $graphURL = "https://graph.microsoft.com/beta"
    #endregion

    # Load CSV
    Try { 
        $csv = Import-Csv -Path $InputFilePath -ErrorAction Stop
    }
    Catch {
        Write-Error "Error importing CSV file: $_"
        return
    }

    foreach ($entry in $csv) {
        $groupId = $entry.groupId
        $groupName = $entry.groupName
        $policyName = $entry.policyName
        $policyId = $entry.policyId
        $assignmentType = $entry.AssignmentType
        $filterName = $entry.filterName
        $filterType = $entry.FilterType

        #region Groups
        if ($groupId -eq "adadadad-808e-44e2-905a-0b7873a8a531") {
            $groupDisplayName = "All Devices"
            Write-Output "Built-in All Devices group selected: $groupId"
        }
        elseif ($groupId -eq "acacacac-9df4-4c7d-9d50-4ef0226f57a9") {
            $groupDisplayName = "All Users"
            Write-Output "Built-in All Users group selected: $groupId"
        }
        else {
            Try {
                $groupURL = "$graphURL/groups/$groupId"
                $groupDetail = Invoke-MgGraphRequest -Uri $groupURL -Method GET
                $groupDisplayName = $groupDetail.displayName
                Write-Output "Group found: $groupDisplayName ($groupId)"
            }
            Catch {
                Write-Output "Error retrieving group $groupId : $_"
                continue
            }
        }
        #endregion

        #region Filters
        Try {
            $filterUrl = "$graphURL/devicemanagement/assignmentFilters"
            $filterDetail = (Invoke-MgGraphRequest -Uri $filterUrl -Method GET).Value | Where-Object { $_.DisplayName -match $filterName }
            Write-Output "Filter found: $($filterDetail.DisplayName) ($($filterDetail.Id))"
        }
        Catch {
            Write-Output "Error retrieving filter: $_"
            continue
        }
        #endregion

        #region Policies
        Try {
            $settingsCatalogUrl = "$graphURL/devicemanagement/configurationPolicies/$policyId"
            $settingsCatalogDetail = Invoke-MgGraphRequest -Uri $settingsCatalogUrl -Method GET
            Write-Output "Settings Catalog policy found: $($settingsCatalogDetail.Name) ($($settingsCatalogDetail.Id))"
        }
        Catch {
            Write-Output "Error retrieving policy: $_"
            continue
        }
        #endregion

        #region Assignments
        Try {
            $assignmentsUrl = "$graphURL/devicemanagement/configurationPolicies/$policyId/assignments"
            $assignmentsDetail = (Invoke-MgGraphRequest -Uri $assignmentsUrl -Method GET).Value | Where-Object { $_.target.groupId -eq $groupId -and ($_.target.'@odata.type' -eq '#microsoft.graph.exclusionGroupAssignmentTarget' -or '#microsoft.graph.groupAssignmentTarget')}
            $allDevicesassignmentsDetail = (Invoke-MgGraphRequest -Uri $assignmentsUrl -Method GET).Value | Where-Object { $_.target.'@odata.type' -eq '#microsoft.graph.allDevicesAssignmentTarget'}
            $allUsersassignmentsDetail = (Invoke-MgGraphRequest -Uri $assignmentsUrl -Method GET).Value | Where-Object { $_.target.'@odata.type' -eq '#microsoft.graph.allUsersAssignmentTarget'}

            if ($assignmentsDetail) {
                Write-Warning "$groupDisplayName is already assigned to $($settingsCatalogDetail.Name) with $($assignmentsDetail.target.'@odata.type')"
                continue
            }
            
            if ($allDevicesassignmentsDetail) {
                Write-Warning "Built-in All Devices is already assigned to $($settingsCatalogDetail.Name)"
                continue
            }
            if ($allUsersassignmentsDetail) {
                Write-Warning "Built-in All Users is already assigned to $($settingsCatalogDetail.Name)"
                continue
            }
        }
        Catch {
            Write-Output "Error checking assignments: $_"
        }
        #endregion

        #region Build Assignments
        if ($assignmentType -eq '#microsoft.graph.allDevicesAssignmentTarget') {
            $assignBody = @{
                "assignments" = @(
                    @{
                        id     = $(New-Guid).Guid
                        target = @{
                            "@odata.type"                              = $assignmenttype
                            deviceAndAppManagementAssignmentFilterType = $filterType
                            deviceAndAppManagementAssignmentFilterId   = $($filterdetail.id)
                        }
                    }
                )
            } | ConvertTo-Json -Depth 4
        } 
        if ($assignmentType -eq '#microsoft.graph.allUsersAssignmentTarget') {
            $assignBody = @{
                "assignments" = @(
                    @{
                        id     = $(New-Guid).Guid
                        target = @{
                            "@odata.type"                              = $assignmenttype
                            deviceAndAppManagementAssignmentFilterType = $filterType
                            deviceAndAppManagementAssignmentFilterId   = $($filterdetail.id)
                        }
                    }
                )
            } | ConvertTo-Json -Depth 4
        } 
        if ($assignmentType -eq '#microsoft.graph.exclusionGroupAssignmentTarget') {
            $assignBody = @{
                "assignments" = @(
                    @{
                        target = @{
                            "@odata.type" = $assignmentType
                            "groupId"     = $groupId
                        }
                    }
                )
            } | ConvertTo-Json -Depth 4
        } 
        if ($assignmentType -eq '#microsoft.graph.groupAssignmentTarget') {
            $assignBody = @{
                "assignments" = @(
                    @{
                        target = @{
                            "@odata.type"                                = $assignmenttype
                            "deviceAndAppManagementAssignmentFilterType" = $filterType
                            "deviceAndAppManagementAssignmentFilterId"   = $($filterdetail.id)
                            "groupId"                                    = $groupId
                        }
                    }
                )
            } | ConvertTo-Json -Depth 4
        }
        #endregion

        #region Check Assignments
        Try {
            $postURL = "$settingsCatalogUrl/assign"
            Invoke-MgGraphRequest -Uri $postURL -Method POST -Body $assignBody -ContentType "application/json"
            Write-Output "Successfully assigned $groupDisplayName to $($settingsCatalogDetail.Name)"
        }
        Catch {
            Write-Output "Error assigning $groupDisplayName to $($settingsCatalogDetail.Name): $_"
        }
        #endregion
    }
}
