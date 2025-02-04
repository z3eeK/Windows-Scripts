@echo off
setlocal
set BACKUP_DIR=C:\Backup_Tasks
if not exist "%BACKUP_DIR%" (
md "%BACKUP_DIR%"
)
copy /Y "C:\Windows\System32\Tasks" "%BACKUP_DIR%"
attrib -H -S "%BACKUP_DIR%"
attrib -H -S "%BACKUP_DIR%\*.*" /S /D
endlocal
timeout 3
