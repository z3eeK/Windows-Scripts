@echo off
setlocal
set BACKUP_DIR=C:\Backup_AudioEQ
mkdir "%BACKUP_DIR%"
cd "%BACKUP_DIR%"
reg export HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render\ AudioEQ_Backup.reg
endlocal
timeout 3
