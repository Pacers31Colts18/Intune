[CmdletBinding()]
param
(
    [parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [string]$folder
)


$policyfiles = Get-ChildItem $folder | Select-Object Name, BaseName

Foreach ($policyfile in $policyfiles){
    $policyName = $policyfile.Name
    $policybaseName = $policyfile.BaseName

        $policy = Get-Content -path $folder\$policyName
        $policyCheck = (Invoke-Mggraphrequest -uri "https://graph.microsoft.com/beta/deviceManagement/configurationPolicies?`$filter=Name eq '$policyBaseName'" -Method GET).value
        
        if ($policyCheck.Name){
        Write-Host "$($policyCheck.Name) already exists, modifying profile with PUT"
        $put = Invoke-Mggraphrequest -Uri "https://graph.microsoft.com/beta/deviceManagement/configurationPolicies/$($policyCheck.Id)" -Method PUT -Body $policy -ContentType "application/json"
        }
        else{
            Write-Host "$policybaseName does not exist, creating new profile"
            $post = Invoke-Mggraphrequest -Uri "https://graph.microsoft.com/beta/deviceManagement/configurationPolicies" -Method POST -Body $policy -ContentType "application/json"
    }
}

