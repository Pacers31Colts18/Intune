<#
.Notes
Intune Detection template. Allows for multiple registry items to check.
#>

$RegistryKeys = @(
    @{ Path = "HKLM:\Policies\Microsoft\Windows NT\Printers\PointAndPrint"; Name = "RestrictDriverInstallationToAdministrators"; Type = "DWORD"; Value = "0" }
)

$Compliant = $true

Try {
    foreach ($Key in $RegistryKeys) {
        # Attempt to retrieve the registry value
        $RegistryValue = Get-ItemProperty -Path $Key.Path -Name $Key.Name -ErrorAction SilentlyContinue | Select-Object -ExpandProperty $Key.Name
    
        # Convert value if necessary (handling DWORD values)
        if ($Key.Type -eq "DWORD") {
            $RegistryValue = [int]$RegistryValue
        }

        # Compare retrieved value with expected value
        if ($RegistryValue -ne $Key.Value) {
            Write-Warning "Not Compliant: $($Key.Name) in $($Key.Path) does not match expected value ($($Key.Value))."
            $Compliant = $false
        }
    }

    if ($Compliant) {
        Write-Output "Compliant"
        Exit 0
    } else {
        Write-Output "Non-Compliant"
        Exit 1
    }
} 
Catch {
    Write-Warning "Not Compliant: Registry key missing or inaccessible."
    Exit 1
}
