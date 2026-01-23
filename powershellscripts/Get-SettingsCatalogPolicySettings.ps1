Function Get-SettingsCatalogPolicySettings() {
    #https://github.com/microsoftgraph/powershell-intune-samples/blob/master/SettingsCatalog/SettingsCatalog_Export.ps1  
    
    <#
    .SYNOPSIS
    This function is used to get Settings Catalog policy Settings from the Graph API REST interface
    .DESCRIPTION
    The function connects to the Graph API Interface and gets any Settings Catalog policy Settings
    .EXAMPLE
    Get-SettingsCatalogPolicySettings -policyid policyid
    Returns any Settings Catalog policy Settings configured in Intune
    .NOTES
    NAME: Get-SettingsCatalogPolicySettings
    #>
    
    [cmdletbinding()]
    
    param
    (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        $policyid
    )
    
    $graphApiVersion = "beta"
    $Resource = "deviceManagement/configurationPolicies('$policyid')/settings?`$expand=settingDefinitions"
    
    try {
    
        $uri = "https://graph.microsoft.com/$graphApiVersion/$($Resource)"
    
        $Response = (Invoke-MgGraphRequest -Uri $uri -Headers $authToken -Method Get)
    
        $AllResponses = $Response.value
            
        $ResponseNextLink = $Response."@odata.nextLink"
    
        while ($ResponseNextLink -ne $null) {
    
            $Response = (Invoke-MgGraphRequest -Uri $ResponseNextLink -Headers $authToken -Method Get)
            $ResponseNextLink = $Response."@odata.nextLink"
            $AllResponses += $Response.value
    
        }
    
        return $AllResponses
    
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