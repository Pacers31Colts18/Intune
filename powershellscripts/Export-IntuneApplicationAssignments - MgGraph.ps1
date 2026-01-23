function Export-IntuneApplicationAssignments {
    <#
    .SYNOPSIS
    Exports Microsoft Intune mobile app assignment details to a CSV file.

    .DESCRIPTION
    This function connects to Microsoft Graph and retrieves details about mobile applications 
    and their assignment configurations in Intune. It includes platform type, app metadata, 
    group targeting, filter usage, and assignment intent.

    .PARAMETER OutputDir
    Optional. The directory path where the CSV file will be saved. Defaults to the current working directory.

    .NOTES
    Requires:
      - Microsoft.Graph PowerShell SDK (e.g., Invoke-MgGraphRequest, Get-MgContext)
      - Delegated Graph permissions to read device app management and group details

    .EXAMPLE
    Export-IntuneApplicationAssignments
    Prompts for delegated Graph connection and outputs the CSV to the current folder.

    .OUTPUTS
    A CSV file containing assignment details with columns:
    Platform, ID, DisplayName, InformationURL, DateCreated,
    VPPTokenOrganizationName, TotalLicenseCount, UsedLicenseCount,
    GroupId, GroupName, FilterType, FilterId, FilterName, AssignmentIntent

    .LINK
    https://learn.microsoft.com/en-us/powershell/microsoftgraph/overview
    #>

    # Check Graph connection
    if ($null -eq (Get-MgContext)) {
        Write-Error "Authentication needed. Please call connect to Microsoft Graph."
        return
    }

    # Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($outputdir.Length -eq 0) { $outputdir = $pwd }
    $OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    $graphApiVersion = "beta"
    $resultsArray = @()

    #region Get application details
    $uri = "https://graph.microsoft.com/$graphApiVersion/deviceAppManagement/mobileApps?`$expand=assignments"
    $resultCheck = @()
    do {
        $response = Invoke-MgGraphRequest -Method GET -Uri $uri
        $resultCheck += $response.value
        $uri = $response.'@odata.nextLink'
    } while ($uri)
    #endregion

    foreach ($app in $resultCheck) {
        $type = $app.'@odata.type'
        $platform = $type -replace '^#microsoft\.graph\.', ''

        # App with no assignments
        if ($app.assignments.Count -eq 0) {
            $result = [PSCustomObject]@{
                Platform                 = $platform
                ID                       = $app.id
                DisplayName              = $app.displayName
                InformationURL           = $app.informationUrl
                DateCreated              = $app.createdDateTime
                VPPTokenOrganizationName = $app.vppTokenOrganizationName
                TotalLicenseCount        = $app.totalLicenseCount
                UsedLicenseCount         = $app.usedLicenseCount
                GroupId                  = ""
                GroupName                = ""
                FilterType               = ""
                FilterId                 = ""
                FilterName               = ""
                AssignmentIntent         = "Not Assigned"
            }
            $resultsArray += $result
        }
        #Apps with assignments
        else {
            foreach ($assignment in $app.assignments) {
                $GroupName = $null
                $group = $null
                $filterName = $null

                switch ($assignment.target.'@odata.type') {
                    "#microsoft.graph.allLicensedUsersAssignmentTarget" {
                        $GroupName = "All Users"
                    }
                    "#microsoft.graph.allDevicesAssignmentTarget" {
                        $GroupName = "All Devices"
                    }
                    "#microsoft.graph.groupAssignmentTarget" {
                        try {
                            $uri = "https://graph.microsoft.com/$graphApiVersion/groups/$($assignment.target.groupid)"
                            $group = Invoke-MgGraphRequest -Uri $uri -Method GET
                        }
                        catch {
                            Write-Error "Unable to get group details: $_"
                        }
                    }
                }

                $resolvedGroupName = if ($null -ne $group -and $group.displayName) {
                    $group.displayName
                }
                elseif ($GroupName) {
                    $GroupName
                }
                else {

                }

                #region Filter Details
                $filterId = $assignment.target.deviceAndAppManagementAssignmentFilterId
                $filterType = $assignment.target.deviceAndAppManagementAssignmentFilterType
                if ($filterId -and $filterId.Length -eq 36) {
                    try {
                        $uri = "https://graph.microsoft.com/$graphApiVersion/devicemanagement/assignmentFilters/$filterId"
                        $filterResponse = Invoke-MgGraphRequest -Uri $uri -Method GET
                        $filterName = $filterResponse.displayName
                    }
                    catch {
                        Write-Warning "Failed to get filter details for ID $filterId"
                    }
                }
                #endregion

                $result = [PSCustomObject]@{
                    Platform                 = $platform
                    ID                       = $app.id
                    DisplayName              = $app.displayName
                    InformationURL           = $app.informationUrl
                    DateCreated              = $app.createdDateTime
                    VPPTokenOrganizationName = $app.vppTokenOrganizationName
                    TotalLicenseCount        = $app.totalLicenseCount
                    UsedLicenseCount         = $app.usedLicenseCount
                    GroupId                  = $assignment.target.groupId
                    GroupName                = $resolvedGroupName
                    FilterType               = $filterType
                    FilterId                 = $filterId
                    FilterName               = $filterName
                    AssignmentIntent         = $assignment.intent
                }
                $resultsArray += $result
            }
        }
    }

    #region Results
    if ($ResultsArray.Count -ge 1) {
        $ResultsArray | Select-Object -Property Platform, Id, DisplayName, InformationURL, DateCreated, VPPTokenOrganizationName, TotalLicenseCount, UsedLicenseCount, GroupId, GroupName, FilterType, FilterId, FilterName, AssignmentIntent | Export-Csv -Path $outputfilepath -NoTypeInformation
    }

    # Test if output file was created
    if (Test-Path $outputfilepath) {
        Write-Output "Output file = $outputfilepath."
    }
    else {
        Write-Warning "No output file created."
    }
    #endregion
}
