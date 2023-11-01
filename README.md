# Winstart
Automation script for a fresh Windows install which is catered towards my own setup, can be easily modified to own preference
# What does it do?
By default, these options are executed:
- Activate Windows
- Install & Activate Office
- Install Windows Package Manager
- Remove Cortana, Paint 3D, Sticky Notes, Your Phone, Xbox Game Bar
- Run ChrisTitus Windows Utility
# One-liner
```
& ([ScriptBlock]::Create((irm https://massgrave.dev/get))) /HWID;(New-Object System.Net.WebClient).DownloadFile('https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=Professional2021Retail&platform=x64&language=en-us&version=O16GA',"$env:APPDATA\OfficeSetup.exe");Start-Process ("$env:APPDATA\OfficeSetup.exe") -Wait;& ([ScriptBlock]::Create((irm https://massgrave.dev/get))) /Ohook;Remove-Item -Path "$env:APPDATA\OfficeSetup.exe";start powershell {irm asheroto.com/winget | iex} -Wait;Get-AppxPackage -AllUsers Microsoft.549981C3F5F10 | Remove-AppxPackage -ErrorAction SilentlyContinue;Get-AppxPackage -AllUsers Microsoft.MSPaint | Remove-AppxPackage -ErrorAction SilentlyContinue;Get-AppxPackage -AllUsers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage -ErrorAction SilentlyContinue;Get-AppxPackage -AllUsers Microsoft.YourPhone | Remove-AppxPackage -ErrorAction SilentlyContinue;Get-AppxPackage -AllUsers Microsoft.XboxGamingOverlay | Remove-AppxPackage -ErrorAction SilentlyContinue;irm https://christitus.com/win | iex;
```
# Notes
Recommended Windows versions:
- [Windows 10 Enterprise LTSC](https://www.microsoft.com/en-us/evalcenter/download-windows-10-enterprise)
- [Windows 11](https://www.microsoft.com/nl-nl/software-download/windows11) with [English (World)](https://www.reddit.com/r/Windows11/comments/15gk07n/english_world_as_time_and_currency_for_debloating/)

Windows can be tweaked further with:
- [Wintoys](https://apps.microsoft.com/detail/wintoys/9P8LTPGCBZXD)
- [PowerToys](https://apps.microsoft.com/detail/microsoft-powertoys/XP89DCGQ3K6VLD)
- [Winaero Tweaker](https://winaerotweaker.com/)
# Credits
- [winget-install](https://github.com/asheroto/winget-install)
- [ChrisTitus winutil](https://github.com/ChrisTitusTech/winutil)
- [Microsoft Activation Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts)
