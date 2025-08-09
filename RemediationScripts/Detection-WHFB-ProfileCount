# Define profiles to exclude
$excludedProfiles = @("Administrator", "Guest", "Public", "Default", "defaultuser0")
$DaysAgo = (Get-Date).AddDays(-90)

# Get user profiles
$userProfiles = Get-WmiObject -Class Win32_UserProfile | Where-Object {
   ($_.Special -eq $false) -and
   ($excludedProfiles -notcontains $_.LocalPath.Split('\')[-1]) -and
   ($_.LastUseTime -gt $DaysAgo)
}

# Check profile count
if ($userProfiles.count -le 10) {
   Write-Output "Compliant: Less than 10 profiles found, $($userProfiles.count) total profiles found."
   Exit 1
} 
else {
   Write-Output "Non-Compliant: More than 10 profiles found, $($userProfiles.count) total profiles found."
   Exit 0
}
