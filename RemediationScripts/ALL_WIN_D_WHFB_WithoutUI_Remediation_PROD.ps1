<#
.Notes
Handles multiple registry keys with different actions:
- Removes "Enabled" if present
- Ensures "UseWindowsHello" is added if missing
#>

$RegistryKeys = @(
    @{ Path = "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork"; Name = "Enabled"; Action = "Remove" },
    @{ Path = "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork"; Name = "DisablePostLogonProvisioning"; Type = "DWORD"; Value = 1; Action = "Add" }
)

foreach ($Key in $RegistryKeys) {
    switch ($Key.Action) {
        "Remove" {
            if (Test-Path -LiteralPath $Key.Path) {
                if (Get-ItemProperty -Path $Key.Path -Name $Key.Name -ErrorAction SilentlyContinue) {
                    Write-Output "Removing $($Key.Name)..."
                    Remove-ItemProperty -Path $Key.Path -Name $Key.Name -Force -ErrorAction SilentlyContinue
                    Write-Output "$($Key.Name) Removed"
                }
                else {
                    Write-Output "$($Key.Name) not found, nothing to remove."
                }
            }
        }
        "Add" {
            if (-not (Test-Path -LiteralPath $Key.Path)) {
                Write-Output "Path $($Key.Path) missing. Creating..."
                New-Item -Path $Key.Path -Force | Out-Null
            }
            if (-not (Get-ItemProperty -Path $Key.Path -Name $Key.Name -ErrorAction SilentlyContinue)) {
                Write-Output "Adding $($Key.Name)..."
                New-ItemProperty -Path $Key.Path -Name $Key.Name -PropertyType $Key.Type -Value $Key.Value -Force | Out-Null
                Write-Output "$($Key.Name) Added"
            }
            else {
                Write-Output "$($Key.Name) already exists, skipping add."
            }
        }
    }
}
