Function Get-DeviceConfiguration() {
    #https://github.com/microsoftgraph/powershell-intune-samples/blob/master/DeviceConfiguration/DeviceConfiguration_Export.ps1
    
    <#
        .SYNOPSIS
        This function is used to get device configuration policies from the Graph API REST interface
        .DESCRIPTION
        The function connects to the Graph API Interface and gets any device configuration policies
        .EXAMPLE
        Get-DeviceConfiguration
        Returns any device configuration policies configured in Intune
        .NOTES
        NAME: Get-DeviceConfiguration
        #>
        
    $graphApiVersion = "Beta"
    $DCP_resource = "deviceManagement/deviceConfigurations"
            
    try {
            
        $uri = "https://graph.microsoft.com/$graphApiVersion/$($DCP_resource)"
            (Invoke-MgGraphRequest -Uri $uri -Headers $authToken -Method Get).Value
            
    }
            
    catch {
        
        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
        write-host
        break
        
    }
}