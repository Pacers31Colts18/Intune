<#
.Notes
Checks for presence of specific registry values related to Windows Hello for Business.
If either registry value exists, the system is marked as Non-Compliant.
#>

$RegistryKeys = @(
    @{ Path = "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork"; Name = "Enabled" },
    @{ Path = "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork"; Name = "DisablePostLogonProvisioning" }
)

$NonCompliantFound = $false

foreach ($Key in $RegistryKeys) {
    try {
        $value = Get-ItemProperty -Path $Key.Path -Name $Key.Name -ErrorAction Stop
        Write-Output "Found registry value: $($Key.Path)\$($Key.Name)"
        $NonCompliantFound = $true
    } catch {
        continue
    }
}

if ($NonCompliantFound) {
    Write-Output "Non-Compliant"
    exit 1
} else {
    Write-Output "Compliant"
    exit 0
}
