@echo off
setlocal
set BACKUP_DIR="C:\Backup_RivaTuner"
if exist "%BACKUP_DIR%" (
echo Oups! The path %BACKUP_DIR% already exists. Did you already run the exporter?
pause
goto END
)
mkdir "%BACKUP_DIR%"
cd "C:\Program Files (x86)\RivaTuner Statistics Server\Profiles"
copy /Y * "%BACKUP_DIR%"
:END
endlocal
timeout 3
