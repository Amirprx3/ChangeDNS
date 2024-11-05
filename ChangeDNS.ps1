# Check for admin privileges
If (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # If not running as admin, restart the script with admin privileges
    Start-Process PowerShell -ArgumentList "-File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

# Main code to change DNS
$scriptDir = Split-Path -Parent $PSCommandPath
$dnslist = Get-Content "$scriptDir\alldns.txt"
$adapter = Get-NetAdapter | Where-Object { $_.Name -eq 'Wi-Fi' -or $_.Name -eq 'Ethernet' }
Set-DnsClientServerAddress -InterfaceIndex $adapter.InterfaceIndex -ResetServerAddresses
Set-DnsClientServerAddress -InterfaceIndex $adapter.InterfaceIndex -ServerAddresses $dnslist