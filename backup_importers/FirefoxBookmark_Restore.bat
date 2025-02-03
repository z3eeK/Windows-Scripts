@echo off
setlocal
set MozillaPlaces=%userprofile%\appdata\Roaming\Mozilla\Firefox\Profiles
if exist "%MozillaPlaces%" (
echo Oups! Mozilla Places already exists. Try restoring before Firefox is installed or restore manually.
pause
goto END
)
powershell.exe -executionpolicy bypass -file "%~dp0FirefoxBookmark_Restore.ps1"
:END
endlocal
timeout 3