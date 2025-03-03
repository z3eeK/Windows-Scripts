@echo off
setlocal
set BACKUP_DIR="C:\Backup_MSI_CFG"
if exist "%BACKUP_DIR%" (
echo Oups! The path %BACKUP_DIR% already exists. Did you already run the exporter?
pause
goto END
)
mkdir "%BACKUP_DIR%"
cd "C:\Program Files (x86)\MSI Afterburner\Profiles"
copy /Y MSIAfterburner.cfg "%BACKUP_DIR%"
copy /Y Profile1.cfg "%BACKUP_DIR%"
copy /Y Profile2.cfg "%BACKUP_DIR%"
copy /Y Profile3.cfg "%BACKUP_DIR%"
copy /Y Profile4.cfg "%BACKUP_DIR%"
copy /Y Profile5.cfg "%BACKUP_DIR%"
:END
endlocal
timeout 3
