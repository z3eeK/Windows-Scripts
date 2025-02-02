mkdir "C:\Backup_Firefox"
$MozillaPlaces = (gci "$env:userprofile\appdata\Roaming\Mozilla\Firefox\Profiles" -force -recurse -ErrorAction SilentlyContinue | ?{$_.Name -eq 'places.sqlite'}).DirectoryName
Robocopy "$MozillaPlaces" "C:\Backup_Firefox" 'places.sqlite' /s /e /W:1 /R:1 | Out-Null
pause