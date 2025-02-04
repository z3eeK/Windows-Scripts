@echo off
setlocal
set BACKUP_DIR="C:\Backup_Accessibility"
if exist "%BACKUP_DIR%" (
echo Oups! The path %BACKUP_DIR% already exists. Maybe it is an old backup?
pause
goto END
)
mkdir "%BACKUP_DIR%"
cd "%BACKUP_DIR%"
reg export "HKEY_CURRENT_USER\Control Panel\Accessibility" Accessibility_Backup.reg
:END
endlocal
timeout 3
