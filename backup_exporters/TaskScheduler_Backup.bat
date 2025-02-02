@echo off
set BACKUP_TASKS=C:\Backup_Tasks
if not exist "%BACKUP_TASKS%" (
md "%BACKUP_TASKS%"
)
copy /Y "C:\Windows\System32\Tasks" "%BACKUP_TASKS%"
attrib -H -S "%BACKUP_TASKS%"
attrib -H -S "%BACKUP_TASKS%\*.*" /S /D