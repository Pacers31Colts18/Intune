Function Export-JSONData() {
    #MODIFIED from original sample code at link below. Review before updating/replacing from source
    #https://github.com/microsoftgraph/powershell-intune-samples/blob/master/DeviceConfiguration/DeviceConfiguration_Export.ps1

    <#
    .SYNOPSIS
    This function is used to export JSON data returned from Graph
    .DESCRIPTION
    This function is used to export JSON data returned from Graph
    .EXAMPLE
    Export-JSONData -JSON $JSON
    Export the JSON inputted on the function
    .NOTES
    NAME: Export-JSONData
    #>
    
    param (
    
        $JSON,
        $ExportPath
    
    )
    
    try {
    
        if ($JSON -eq "" -or $JSON -eq $null) {
    
            write-host "No JSON specified, please specify valid JSON..." -f Red
    
        }
    
        elseif (!$ExportPath) {
    
            write-host "No export path parameter set, please provide a path to export the file" -f Red
    
        }
    
        elseif (!(Test-Path $ExportPath)) {
    
            write-host "$ExportPath doesn't exist, can't export JSON Data" -f Red
    
        }
    
        else {
    
            $JSON1 = ConvertTo-Json $JSON -Depth 20
    
            $JSON_Convert = $JSON1 | ConvertFrom-Json
    
            #Add logic  for DisplayName vs Name
            if ($JSON_Convert.name -ne $null)
            { $displayName = $JSON_Convert.name }
            if ($JSON_Convert.displayname -ne $null)
            { $displayName = $JSON_Convert.displayname }
    
            # Updating display name to follow file naming conventions - https://msdn.microsoft.com/en-us/library/windows/desktop/aa365247%28v=vs.85%29.aspx
            $DisplayName = $DisplayName -replace '\<|\>|:|"|/|\\|\||\?|\*', "_"
    
            $FileName_JSON = "$DisplayName" + ".json"
    
            write-host "Export Path:" "$ExportPath" -ForegroundColor Cyan
    
            $JSON1 | Set-Content -LiteralPath "$ExportPath\$FileName_JSON"
            write-host "JSON created in $ExportPath\$FileName_JSON..." -f cyan   
        }
    }
    catch {
        $_.Exception
    }
    try {
        $PathTest = Test-Path -Path "$ExportPath\$FileName_JSON"
        if ($PathTest -eq $true) {
        Write-Host "$ExportPath\$FileName_JSON" exists... -ForegroundColor Cyan
        }
        if ($PathTest -eq $false) {
        Write-Host "$ExportPath\$FileName_JSON" does not exist -ForegroundColor Red 
        break   
        }
    }
    catch {
        $ErrorMessage = $_.Exception.Message
        $FailedItem = $_.Exception.ItemName
        Write-Host $ErrorMessage -ForegroundColor Red
        Write-Output $ErrorMessage
    }
    
}