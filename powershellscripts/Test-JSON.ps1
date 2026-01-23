Function Test-JSON() {
    #MODIFIED from original sample code at link below. Review before updating/replacing from source
    #https://github.com/microsoftgraph/powershell-intune-samples/blob/master/DeviceConfiguration/DeviceConfiguration_Add_Assign.ps1
    
    <#
        .SYNOPSIS
        This function is used to test if the JSON passed to a REST Post request is valid
        .DESCRIPTION
        The function tests if the JSON passed to the REST Post is valid
        .EXAMPLE
        Test-JSON -JSON $JSON
        Test if the JSON is valid before calling the Graph REST interface
        .NOTES
        NAME: Test-AuthHeader
        #>
        
    param (
        
        $JSON
        
    )
        
    try {
        
        $TestJSON = ConvertFrom-Json $JSON -ErrorAction Stop
        $validJson = $true
        
    }
        
    catch {
        
        $validJson = $false
        $_.Exception
        
    }
        
    if (!$validJson) {
            
        Write-Host "Provided JSON isn't in valid JSON format" -f Red
        break
        
    }
        
}