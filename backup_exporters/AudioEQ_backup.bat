mkdir "C:\Backup_AudioEQ"
cd C:\Backup_AudioEQ\
reg export HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render\ AudioEQ_Backup.reg
pause