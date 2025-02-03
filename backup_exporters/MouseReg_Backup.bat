@echo off
setlocal
set Mouse_Reg="C:\Backup_MouseReg"
if exist "%Mouse_Reg%" (
echo Oups! The path C:\Backup_MouseReg already exists. Maybe it is an old backup?
pause
goto END
)
mkdir "C:\Backup_MouseReg"
cd C:\Backup_MouseReg\
reg export "HKEY_CURRENT_USER\Control Panel\Accessibility" MouseRegAcc.reg
reg export "HKEY_CURRENT_USER\Control Panel\Mouse" MouseRegMouse.reg
:END
endlocal
timeout 3