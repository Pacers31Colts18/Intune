function Export-IntuneAssignmentFilters {
    <#
    .SYNOPSIS
    Exports Microsoft Intune assignment filter details to a CSV file.

    .DESCRIPTION
    This function connects to Microsoft Graph and retrieves details about assignment filters in Intune. It includes Platform, Id, DisplayName, Rule, Date Created, Date Modified, and InUse. 

    .PARAMETER OutputDir
    Optional. The directory path where the CSV file will be saved. Defaults to the current working directory.

    .NOTES
    Requires:
      - Microsoft.Graph PowerShell SDK (e.g., Invoke-MgGraphRequest, Get-MgContext)
      - Delegated Graph permissions to read device management details.

    .EXAMPLE
    Export-IntuneAssignmentFilters
    Prompts for delegated Graph connection and outputs the CSV to the current folder.

    .OUTPUTS
    A CSV file containing assignment details with columns:
    Platform, Id, DisplayName, Rule, Date Created, Date Modified, and InUse.

    .LINK
    https://learn.microsoft.com/en-us/powershell/microsoftgraph/overview
    #>

    # Check Graph connection
    if ($null -eq (Get-MgContext)) {
        Write-Warning "Authentication needed. Please call Connect-MgGraph."
        return
    }

    # Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($outputdir.Length -eq 0) { $outputdir = $pwd }
    $OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    $graphApiVersion = "beta"
    $resultsArray = @()

    #region Get assignment filters
    Write-Output "Obtaining Intune assignment filters..."
    $uri = "https://graph.microsoft.com/$graphApiVersion/devicemanagement/assignmentFilters"
    $resultCheck = @()
    do {
        $response = Invoke-MgGraphRequest -Method GET -Uri $uri
        $resultCheck += $response.value
        $uri = $response.'@odata.nextLink'
    } while ($uri)
    #endregion

    foreach ($filter in $resultCheck) {
        $uri = "https://graph.microsoft.com/$graphApiVersion/deviceManagement/assignmentFilters/$($filter.id)/payloads"
        $resultCheck = @()
        do {
            $response = Invoke-MgGraphRequest -Method GET -Uri $uri
            $resultCheck += $response.value
            $uri = $response.'@odata.nextLink'
        } while ($uri)

            if ($resultcheck.Count -gt 0) {
                $inUse = "In Use"
            }
            else {
                $inUse = ""
            }

        $result = [PSCustomObject]@{
            Platform     = $filter.Platform
            ID           = $filter.id
            DisplayName  = $filter.displayName
            Rule         = $filter.rule
            DateCreated  = $filter.createdDateTime
            DateModified = $filter.lastmodifiedDateTime
            InUse        = $inUse
        }
        $resultsArray += $result
    }

    #region Results
    if ($ResultsArray.Count -ge 1) {
        $ResultsArray | Select-Object -Property Platform, Id, DisplayName, Rule, DateCreated, DateModified, InUse | Export-Csv -Path $outputfilepath -NoTypeInformation
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
