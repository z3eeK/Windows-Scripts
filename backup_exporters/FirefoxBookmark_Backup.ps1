@echo off
setlocal
set BACKUP_DIR=C:\Backup_Firefox
mkdir "%BACKUP_DIR%"
$MozillaPlaces = (gci "$env:userprofile\appdata\Roaming\Mozilla\Firefox\Profiles" -force -recurse -ErrorAction SilentlyContinue | ?{$_.Name -eq 'places.sqlite'}).DirectoryName
Robocopy "$MozillaPlaces" "%BACKUP_DIR%" 'places.sqlite' /s /e /W:1 /R:1 | Out-Null
endlocal
timeout 3
