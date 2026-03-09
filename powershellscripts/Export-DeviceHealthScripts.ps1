Function Export-DeviceHealthScripts {
<#
.SYNOPSIS
Exports all Intune Device Health Scripts (Detection and Remediation) to a specified folder, including the full JSON definition.
.DESCRIPTION
Downloads all Intune Device Health Scripts using Microsoft Graph API and saves them to a specified folder. Each script is saved in its own subfolder, containing the Detection Script, Remediation Script, and a JSON file with the full script definition.
.PARAMETER FolderPath
The folder where the Intune Device Health Scripts will be exported. Each script will be saved in a subfolder named after the script's display name.
.EXAMPLE
Export-DeviceHealthScripts -FolderPath C:\temp\deviceHealthScripts
#>

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [String] $FolderPath
    )

    $graphApiVersion = "Beta"
    $uri = "https://graph.microsoft.com/$graphApiVersion/deviceManagement/deviceHealthScripts"
    $response = Invoke-MgGraphRequest -uri $uri -Method GET

    $scriptIds = $response.value | Select-Object id,displayName
    foreach($script in $scriptIds){
        
        # Get full script object
        $uri = "https://graph.microsoft.com/$graphApiVersion/deviceManagement/deviceHealthScripts/$($script.id)"
        $scriptObject = Invoke-MgGraphRequest -Uri $uri -Method GET
        
        # Create folder
        $healthScriptPath = Join-Path $FolderPath ($scriptObject.displayName)
        New-Item -Path $healthScriptPath -ItemType Directory -Force | Out-Null

        # Export JSON
        $jsonPath = Join-Path $healthScriptPath "$($scriptObject.displayName).json"
        $scriptObject | ConvertTo-Json -Depth 10 | Out-File -FilePath $jsonPath -Encoding UTF8

        # Export Detection Script
        if (($scriptObject.detectionScriptContent).Length -ne 0) {
            [System.Text.Encoding]::ASCII.GetString(
                [System.Convert]::FromBase64String($scriptObject.detectionScriptContent)
            ) | Out-File -Encoding ASCII -FilePath (Join-Path $healthScriptPath "DetectionScript.ps1")
        }

        # Export Remediation Script
        if (($scriptObject.remediationScriptContent).Length -ne 0) {
            [System.Text.Encoding]::ASCII.GetString(
                [System.Convert]::FromBase64String($scriptObject.remediationScriptContent)
            ) | Out-File -Encoding ASCII -FilePath (Join-Path $healthScriptPath "RemediationScript.ps1")
        }
    }
}
