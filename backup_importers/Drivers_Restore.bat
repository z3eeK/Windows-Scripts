@echo off
setlocal
DISM /online /Add-Driver /Driver:C:\Backup_Drivers
:PROMPTUSR
SET /P AREYOUSURE=Would you like to remove the folder C:\Backup_Drivers [Y]es / [N]o?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
echo Cleaning up.
echo Cleaning up..
rmdir /s "C:\Backup_Drivers"  || goto :error
echo Operation Complete
goto :END
:error
echo Failed with error #%errorlevel%. Does the directory exist?
echo Cleaning up...
:END
endlocal
pause