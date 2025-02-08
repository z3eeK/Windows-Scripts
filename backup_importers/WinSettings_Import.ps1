Export-StartLayout -UseDesktopApplicationID -Path "C:\Backup_WinSettings\Startmenu\StartLayoutExporter.xml"


$SourcePathTaskbar = "$env:USERPROFILE\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"


Get-ChildItem "C:\Backup_WinSettings\Taskbar" | where-object {$_.length -lt 1000000000} | Copy-Item -Recurse -Destination $SourcePathTaskbar