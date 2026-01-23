<#
.Notes
Checks for specific registry values related to Windows Hello for Business.
Compliance requires:
- DisablePostLogonProvisioning = 1
AND
- Enabled key not present
If keys are missing or values differ, system is Non-Compliant.
#>

$RegistryPath = "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork"
Write-Output "Registry Path: $RegistryPath"

$NonCompliantFound = $false

# Check DisablePostLogonProvisioning
try {
    $disableValue = Get-ItemProperty -Path $RegistryPath -Name "DisablePostLogonProvisioning" -ErrorAction Stop | Select-Object -ExpandProperty DisablePostLogonProvisioning
    Write-Output "Actual Value : DisablePostLogonProvisioning = $disableValue"
    if ($disableValue -ne 1) {
        $NonCompliantFound = $true
    }
} catch {
    Write-Output "Missing: DisablePostLogonProvisioning"
    $NonCompliantFound = $true
}

# Check Enabled
try {
    $enabledValue = Get-ItemProperty -Path $RegistryPath -Name "Enabled" -ErrorAction Stop | Select-Object -ExpandProperty Enabled
    Write-Output "Actual Value : Enabled = $enabledValue"
    # If Enabled exists = Non-Compliant
    $NonCompliantFound = $true
} catch {
    Write-Output "Missing: Enabled"
    # Missing Enabled is compliant, so do nothing
}

if ($NonCompliantFound) {
    Write-Output "Non-Compliant"
    exit 1
} else {
    Write-Output "Compliant"
    exit 0
}
