@echo off
setlocal
set RivaTuner="C:\Backup_RivaTuner"
if exist "%RivaTuner%" (
echo Oups! The path C:\Backup_RivaTuner already exists. Did you already run the exporter?
pause
goto END
)
mkdir "C:\Backup_RivaTuner"
cd "C:\Program Files (x86)\RivaTuner Statistics Server\Profiles"
copy /Y * "C:\Backup_RivaTuner"
:END
endlocal
timeout 3