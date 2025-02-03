@echo off
setlocal
set MSI_CFG="C:\Backup_MSI_CFG"
if exist "%MSI_CFG%" (
echo Oups! The path C:\Backup_MSI_CFG already exists. Did you already run the exporter?
pause
goto END
)
mkdir "C:\Backup_MSI_CFG"
cd "C:\Program Files (x86)\MSI Afterburner\Profiles"
copy /Y MSIAfterburner.cfg "C:\Backup_MSI_CFG"
copy /Y Profile1.cfg "C:\Backup_MSI_CFG"
copy /Y Profile2.cfg "C:\Backup_MSI_CFG"
copy /Y Profile3.cfg "C:\Backup_MSI_CFG"
copy /Y Profile4.cfg "C:\Backup_MSI_CFG"
copy /Y Profile5.cfg "C:\Backup_MSI_CFG"
:END
endlocal
timeout 3