@echo off
setlocal
set BACKUP_DIR=C:\Backup_GroupPolicy
if not exist "%BACKUP_DIR%" (
echo %BACKUP_DIR% does not exist.
goto END
)
xcopy /E /I /Y "%BACKUP_DIR%" "C:\Windows\System32\GroupPolicy" || goto :error
echo Operation Complete
goto :END
:error
echo Failed with error #%errorlevel%.
:END
endlocal
pause