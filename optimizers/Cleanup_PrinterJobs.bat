net stop "Spooler"
cd /D %windir%
cd System32\spool\PRINTERS
for /d %%D in (*) do rd /s /q "%%D"
del *
net start "Spooler"