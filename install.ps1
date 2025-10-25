# install.ps1
# Installs OpenAsLocalhost by placing the BAT file and importing the registry entries.

# Relaunch as Admin if needed
$IsAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $IsAdmin) {
  Start-Process -FilePath "powershell.exe" -Verb RunAs -ArgumentList "-NoProfile","-ExecutionPolicy","Bypass","-Command `"iwr -useb https://raw.githubusercontent.com/kabangast/openaslocalhost/main/install.ps1 | iex`""
  exit
}

$installDir = 'C:\Program Files\.me\openaslocalhost'
$batUrl     = 'https://raw.githubusercontent.com/kabangast/openaslocalhost/main/OpenAsLocalhost.bat'
$regUrl     = 'https://raw.githubusercontent.com/kabangast/openaslocalhost/main/OpenAsLocalhost.reg'

New-Item -ItemType Directory -Force -Path $installDir | Out-Null

$batPath = Join-Path $installDir 'openaslocalhost.bat'
Invoke-WebRequest $batUrl -UseBasicParsing -OutFile $batPath

$tmpReg = [IO.Path]::ChangeExtension([IO.Path]::GetTempFileName(), '.reg')
(Invoke-WebRequest $regUrl -UseBasicParsing).Content | Set-Content -Path $tmpReg -Encoding ASCII

Start-Process -FilePath regedit.exe -ArgumentList @('/s', $tmpReg) -Wait
Remove-Item $tmpReg -Force -ErrorAction SilentlyContinue

Write-Host 'OpenAsLocalhost installed. Right-click .html or .php and choose "Open as localhost".'