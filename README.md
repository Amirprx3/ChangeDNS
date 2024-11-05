# ChangeDNS PowerShell Script

This PowerShell script is designed to update the DNS settings for a specified network adapter, specifically for Wi-Fi. It reads DNS server addresses from a text file (`alldns.txt`) located in the same directory as the script. If the script is not run with administrative privileges, it will restart itself with elevated permissions.

## Requirements
- **PowerShell** (must be run as Administrator for changing DNS settings)
- A text file named `alldns.txt` containing the DNS server addresses, located in the same directory as the script

## Setup
1. Clone or download this repository to your local machine.
2. Create a text file named `alldns.txt` in the same directory as the script. This file should contain the DNS server addresses you wish to set, each address on a new line. Example:
3. Ensure the PowerShell script (`ChangeDNS.ps1`) is in the same directory as `alldns.txt`.

## Usage
1. **Run the Script**: 
- Right-click on the script and select "Run with PowerShell" to execute it.
- The script will check for admin privileges and request them if necessary.
2. **Functionality**:
- The script will reset the DNS settings for the Wi-Fi or Ethernet adapter.
- It will then apply the DNS addresses listed in `alldns.txt` to the Wi-Fi or Ethernet adapter.

## How the Script Works
1. **Admin Privilege Check**: The script first checks if it's running as an administrator. If not, it will restart itself with elevated privileges.
2. **DNS Update**: 
- It reads the DNS addresses from `alldns.txt`.
- Automatic detection of WiFi or Ethernet to connect DNS
- It resets current DNS settings and applies the new DNS addresses.

## Troubleshooting
- **Error: Cannot find path 'C:\WINDOWS\system32\alldns.txt'**: Ensure `alldns.txt` is in the same directory as the script.
- **Access Denied Error**: Run the script as Administrator.

## Disclaimer
This script modifies DNS settings for your Wi-Fi or Ethrnet adapter. Use it responsibly and ensure you have the necessary permissions.