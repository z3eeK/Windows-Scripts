@echo off
setlocal
set BACKUP_DIR=C:\Backup_Drivers
mkdir "%BACKUP_DIR%"
DISM /online /export-driver "/destination:%BACKUP_DIR%"
endlocal
timeout 3
