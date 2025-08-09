<#
.Notes
Intune Detection script to detect biometric devices for Windows Hello for Business.
#>

$biometricDevices = Get-PnpDevice | Where-Object { $_.Class -eq "Biometric" }

if ($biometricDevices) {

    Write-Output ($biometricDevices.FriendlyName)

    exit 1

} else {

    Write-Output "No biometric devices found."

    exit 0

}
