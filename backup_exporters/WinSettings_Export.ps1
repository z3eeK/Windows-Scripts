mkdir "C:\Backup_WinSettings"
mkdir "C:\Backup_WinSettings\Startmenu"
Export-StartLayout -UseDesktopApplicationID -Path "C:\Backup_WinSettings\Startmenu\StartLayoutExporter.xml"


mkdir "C:\Backup_WinSettings\Taskbar"
reg export "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" "C:\Backup_WinSettings\Taskbar_Backup.reg"
$SourcePathTaskbar = "$env:USERPROFILE\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
Get-ChildItem $SourcePathTaskbar | where-object {$_.length -lt 1000000000} | Copy-Item -Recurse -Destination "C:\Backup_WinSettings\Taskbar"


Read-Host -Prompt "Press Enter to exit"