@echo off
setlocal
set BACKUP_DIR="C:\Backup_Firewall"
if exist "%BACKUP_DIR%" (
echo Oups! The path %BACKUP_DIR% already exists. Did you already run the exporter?
pause
goto END
)
mkdir "C:\Backup_Firewall"
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy" "%BACKUP_DIR%\Firewall_Backup.reg"
:END
endlocal
timeout 3