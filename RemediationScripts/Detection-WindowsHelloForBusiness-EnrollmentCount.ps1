<#
{D6886603-9D2F-4EB2-B667-1971041FA96B} = WUFB PIN, NGC Credential Provider
PIN is minimum requirement for Windows Hello for Business Enrollment.
#> 

$credentialProvider = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\Credential Providers\{D6886603-9D2F-4EB2-B667-1971041FA96B}"

#Count users
if (Test-Path -path $credentialProvider){
$userSids = (Get-ChildItem -path $credentialProvider | Where-Object { $_.Name -match "S-1-5-21|S-1-12-1"}).name.count
}

if ($userSids -ge "10"){
Write-Output "Not Compliant, WHFB Users Enrolled = $usersids"
Exit 1
}

if ($userSids -lt "10"){
Write-Output "Compliant, WHFB Users Enrolled = $usersids"
Exit 0
}

