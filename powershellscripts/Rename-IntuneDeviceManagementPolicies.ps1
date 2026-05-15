function Rename-IntuneDeviceManagementPolicies {
<#
.SYNOPSIS
    Renames Intune device management policies from a CSV file.
.DESCRIPTION
    Renames Intune device management policies from a CSV file. Header must include PolicyType, Id, OldName, NewName.
    PolicyType must match a valid Graph endpoint (e.g. configurationPolicies, deviceConfigurations).
    Use with Export-IntuneDeviceManagementSummary.ps1
.EXAMPLE
    Rename-IntuneDeviceManagementPolicies -InputFilePath C:\temp\rename.csv
.NOTES
    Author: Joe Loveless
    Version: 1.0.0

    #>

    [cmdletbinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$InputFilePath = (Read-Host -Prompt 'Enter location of CSV file')
    )

    #Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($OutputDir.Length -eq 0) { $OutputDir = $pwd }
    $LogFilePath = "$OutputDir\$FunctionName-$date.log"
    $graphapiVersion = "beta"

    #Microsoft Graph Connection check
    if ($null -eq (Get-MgContext)) {
        "Not authenticated to Graph, please connect"
        return
    }

    #Load CSV
    try {
        $csv = Import-Csv -Path $InputFilePath.Trim('"') -ErrorAction Stop
    }
    catch {
        Write-Error $_.Exception.Message
        return
    }

    foreach ($row in $csv) {
        $oldName  = $row.OldName
        $newName  = $row.NewName
        $endpoint = $row.PolicyType
        $patchUri = "https://graph.microsoft.com/$graphapiVersion/deviceManagement/$endpoint/$($row.Id)"

        # configurationPolicies uses .name - all others use .displayName
        $nameField = if ($endpoint -eq 'configurationPolicies') { "name" } else { "displayName" }
        $body = @{ $nameField = $newName } | ConvertTo-Json
        Write-Output "Renaming '$oldName' to '$newName' in $endpoint..."
        try {
            Invoke-MgGraphRequest -Method PATCH -Uri $patchUri -Body $body -ContentType "application/json" -ErrorAction Stop
            $verify = Invoke-MgGraphRequest -Method GET -Uri $patchUri
            $verifiedName = if ($verify.name) { $verify.name } else { $verify.displayName }

            if ($verifiedName -eq $newName) {
                Write-Output -Message "Successfully renamed '$oldName' to '$newName'."
            }
            else {
                Write-Warning "Rename may have failed for '$oldName'. Current name: '$verifiedName'."
            }
        }
        catch {
            Write-Error "Failed to rename '$oldName': $($_.Exception.Message)"
        }
    }
}
