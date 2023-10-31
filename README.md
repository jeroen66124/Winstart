# Winstart
Automation script catered towards my own Windows setup, can be easily modified to own preference
# Programs
By default, the following programs are installed:
- Firefox
- Spotify
- Steam
- Discord
- Terminal
- PowerToys
# One-liner
```
& ([ScriptBlock]::Create((irm https://massgrave.dev/get))) /HWID;(New-Object System.Net.WebClient).DownloadFile('https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=Professional2021Retail&platform=x64&language=en-us&version=O16GA',"$env:APPDATA\OfficeSetup.exe");Start-Process ("$env:APPDATA\OfficeSetup.exe") -Wait;& ([ScriptBlock]::Create((irm https://massgrave.dev/get))) /Ohook;Remove-Item -Path "$env:APPDATA\OfficeSetup.exe";start powershell {irm asheroto.com/winget | iex} -Wait;winget install -e --id Mozilla.Firefox;winget install -e --id Spotify.Spotify;winget install -e --id Valve.Steam;winget install -e --id Discord.Discord;winget install -e --id Microsoft.WindowsTerminal;winget install -e --id Microsoft.PowerToys;Get-AppxPackage -AllUsers Microsoft.549981C3F5F10 | Remove-AppxPackage -ErrorAction SilentlyContinue;Get-AppxPackage -AllUsers Microsoft.MSPaint | Remove-AppxPackage -ErrorAction SilentlyContinue;Get-AppxPackage -AllUsers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage -ErrorAction SilentlyContinue;Get-AppxPackage -AllUsers Microsoft.YourPhone | Remove-AppxPackage -ErrorAction SilentlyContinue;Get-AppxPackage -AllUsers Microsoft.XboxGamingOverlay | Remove-AppxPackage -ErrorAction SilentlyContinue;irm https://christitus.com/win | iex;
```
