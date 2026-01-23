<#
.Notes
Intune Remediation template. Allows for multiple registry items to check.
#>

$RegistryKeys = @(
    @{ Path = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power"; Name = "HiberbootEnabled"; Type = "DWORD"; Value = 0 }
)

foreach ($Key in $RegistryKeys) {
    # Check if the registry key path exists, create if missing
    if (!(Test-Path -LiteralPath $Key.Path)) {  
        Write-Output "$($Key.Path) does not exist. Creating..."
        New-Item -Path $Key.Path -Force -ErrorAction SilentlyContinue
        Write-Output "Key Created"
    }

    #Apply the registry value
    Write-Output "Setting $($Key.Name) in $($Key.Path) to $($Key.Value)"
    New-ItemProperty -Path $Key.Path -Name $Key.Name -Value $Key.Value -PropertyType $Key.Type -Force -ErrorAction SilentlyContinue
    Write-Output "Value Set Successfully"
}
