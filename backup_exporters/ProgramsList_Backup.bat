@echo off
setlocal
set BACKUP_DIR="C:\Backup_ProgramsList"
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i
     set month=%%j
     set day=%%k
     set year=%%l
)
set datestr=%month%_%day%_%year%
if exist "%BACKUP_DIR%" (
echo Oups! The path %BACKUP_DIR% already exists. Running the exporter might override an existing list.
goto PROMPTUSR
goto SKIP
)
:PROMPTUSR
SET /P AREYOUSURE=Would you like to proceed [Y]es / [N]o?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
:SKIP
mkdir "%BACKUP_DIR%"
wmic /output:c:\Backup_ProgramsList\Programs_%datestr%.txt product get name,version
:END
endlocal
timeout 3