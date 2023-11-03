## Activate Windows
Write-Host "Activating Windows..." -ForegroundColor Green
& ([ScriptBlock]::Create((irm https://massgrave.dev/get))) /HWID;
## Install & Activate Office
Write-Host "Installing and activating Office..." -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile('https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=Professional2021Retail&platform=x64&language=en-us&version=O16GA',"$env:APPDATA\OfficeSetup.exe");
Start-Process ("$env:APPDATA\OfficeSetup.exe") -Wait;
& ([ScriptBlock]::Create((irm https://massgrave.dev/get))) /Ohook;
Remove-Item -Path "$env:APPDATA\OfficeSetup.exe";
## Install winget
Write-Host "Installing winget" -ForegroundColor Green
start powershell {irm asheroto.com/winget | iex} -Wait;
## Remove bloatware
Write-Host "Removing bloatware..." -ForegroundColor Green
Get-AppxPackage -AllUsers Microsoft.549981C3F5F10 | Remove-AppxPackage -ErrorAction SilentlyContinue;
Get-AppxPackage -AllUsers Microsoft.MSPaint | Remove-AppxPackage -ErrorAction SilentlyContinue;
Get-AppxPackage -AllUsers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage -ErrorAction SilentlyContinue;
Get-AppxPackage -AllUsers Microsoft.YourPhone | Remove-AppxPackage -ErrorAction SilentlyContinue;
Get-AppxPackage -AllUsers Microsoft.XboxGamingOverlay | Remove-AppxPackage -ErrorAction SilentlyContinue;
## Windows Utility
Write-Host "Running Windows Utility..." -ForegroundColor Green
irm https://christitus.com/win | iex;
