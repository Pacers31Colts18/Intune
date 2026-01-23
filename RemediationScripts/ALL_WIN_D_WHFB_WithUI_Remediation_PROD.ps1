<#
.Notes
Disables Post logon provisioning for Windows Hello for Business
#>

$RegistryKeys = @(
    @{ Path = "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork"; Name = "Enabled"; Type = "DWORD"}
    @{ Path = "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork"; Name = "DisablePostLogonProvisioning"; Type = "DWORD"}
)

foreach ($Key in $RegistryKeys) {
    # Check if the registry key path exists, remove if missing
    if ((Test-Path -LiteralPath $Key.Path)) {  
        Write-Output "$($Key.Name) exists. Removing..."
        Remove-ItemProperty -Path $Key.Path -Name $key.Name -Force -ErrorAction SilentlyContinue
        Write-Output "$($Key.Name) Removed"
    }
}
