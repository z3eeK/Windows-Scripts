@echo off
set BACKUP_DIR=C:\Backup_GroupPolicy
if not exist "%BACKUP_DIR%" (
md "%BACKUP_DIR%"
)
xcopy /E /I /Y "C:\Windows\System32\GroupPolicy" "%BACKUP_DIR%"
attrib -H -S "%BACKUP_DIR%"
attrib -H -S "%BACKUP_DIR%\*.*" /S /D