Function Get-ImportPath {
    #MODIFIED from original sample code at link below. Review before updating/replacing from source.
    #DeviceConfiguration/DeviceConfiguration_Import_FromJSON.ps1

    <# Original sample code - non functional
    If (Test-Path -Path $FileName -Type Leaf) {
        $ImportPath = $FileName
    } Else {
        $ImportPath = Read-Host -Prompt "Please specify a path to a JSON file to import data from e.g. C:\IntuneOutput\Policies\policy.json"
    }
    #>
    
    #Prompt for file name
    $ImportPath = Read-Host -Prompt "Please specify a path to a JSON file to import data from e.g. C:\IntuneOutput\Policies\policy.json"
    
    
    # Replacing quotes for Test-Path
    $ImportPath = $ImportPath.replace('"', '')
    
    if (!(Test-Path "$ImportPath")) {
    
        Write-Host "Import Path for JSON file doesn't exist..." -ForegroundColor Red
        Write-Host "Script can't continue..." -ForegroundColor Red
        Write-Host
        break
    
    }
    return $ImportPath
}