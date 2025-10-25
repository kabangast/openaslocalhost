# uninstall.ps1
$installDir = 'C:\Program Files\.me\openaslocalhost'
Remove-Item $installDir -Recurse -Force -ErrorAction SilentlyContinue
reg delete 'HKCR\SystemFileAssociations\.html\shell\openaslocalhost' /f | Out-Null
reg delete 'HKCR\SystemFileAssociations\.php\shell\openaslocalhost' /f | Out-Null
Write-Host 'OpenAsLocalhost uninstalled.'