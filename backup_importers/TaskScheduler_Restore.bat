@echo off
setlocal
set BACKUP_DIR=C:\Backup_Tasks
if not exist "%BACKUP_DIR%" (
echo %BACKUP_DIR% does not exist.
pause
goto END
)
xcopy /E /I "%BACKUP_DIR%" "C:\Windows\System32\Tasks" || goto :error
echo Operation Complete
goto :END
:error
echo Failed with error #%errorlevel%.
echo Are you sure you ran administrator?
pause
:END
endlocal
timeout 3
