Function Get-ExportPath {
    ##MODIFIED from original sample code at link below. Review before updating/replacing from source.
    #https://github.com/microsoftgraph/powershell-intune-samples/blob/master/DeviceConfiguration/DeviceConfiguration_Export.ps1
    
    #Set output directory
    if ($OutputDir.Length -eq 0) {
    
        #Collect user input
        while ($OutputDir.Length -le 1) {
            $OutputDir = Read-Host -Prompt "Please specify a path for MNIT Powershell results/output files"
            #Path processing/adjustments
            $OutputDir = $OutputDir.replace('"', '')
            #Create directory if it doesn't exist
            if (!(Test-Path "$OutputDir")) {
                Write-Host
                Write-Host "Path '$OutputDir' doesn't exist, do you want to create this directory? Y or N?" -ForegroundColor Yellow
                $Confirm = read-host
                if ($Confirm -eq "y" -or $Confirm -eq "Y") {
                    new-item -ItemType Directory -Path "$OutputDir" | Out-Null
                    Write-Host
                }
                else {
                    Break
                }
            }
        }  
    }
    #Add subdir based on environment
    $mgContext = Get-MgContext
    switch ($mgContext.TenantId) {
        '33562380-59ef-467d-88af-316a728263b2' { $OutputDir = "$OutputDir\Intune-DEV" }
        'eb14b046-24c4-4519-8f26-b89c2159828c' { $OutputDir = "$OutputDir\Intune-PROD" }
    }
    return $OutputDir
} 