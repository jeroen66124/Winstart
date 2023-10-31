## Activate Windows
& ([ScriptBlock]::Create((irm https://massgrave.dev/get))) /HWID;
## Install & Activate Office
(New-Object System.Net.WebClient).DownloadFile('https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=Professional2021Retail&platform=x64&language=en-us&version=O16GA',"$env:APPDATA\OfficeSetup.exe");
Start-Process ("$env:APPDATA\OfficeSetup.exe") -Wait;
& ([ScriptBlock]::Create((irm https://massgrave.dev/get))) /Ohook;
Remove-Item -Path "$env:APPDATA\OfficeSetup.exe";
## Install winget
start powershell {irm asheroto.com/winget | iex} -Wait;
## Install Programs
winget install -e --id Mozilla.Firefox;
winget install -e --id Spotify.Spotify;
winget install -e --id Valve.Steam;
winget install -e --id Discord.Discord;
winget install -e --id Microsoft.WindowsTerminal;
winget install -e --id Microsoft.PowerToys;
## Remove bloatware
Get-AppxPackage -AllUsers Microsoft.549981C3F5F10 | Remove-AppxPackage -ErrorAction SilentlyContinue;
Get-AppxPackage -AllUsers Microsoft.MSPaint | Remove-AppxPackage -ErrorAction SilentlyContinue;
Get-AppxPackage -AllUsers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage -ErrorAction SilentlyContinue;
Get-AppxPackage -AllUsers Microsoft.YourPhone | Remove-AppxPackage -ErrorAction SilentlyContinue;
Get-AppxPackage -AllUsers Microsoft.XboxGamingOverlay | Remove-AppxPackage -ErrorAction SilentlyContinue;
## Windows Utility
irm https://christitus.com/win | iex;