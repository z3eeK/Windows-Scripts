rmdir /s /q A:\$recycle.bin
rmdir /s /q B:\$recycle.bin
rmdir /s /q C:\$recycle.bin
rmdir /s /q D:\$recycle.bin
rmdir /s /q E:\$recycle.bin
rmdir /s /q F:\$recycle.bin
rmdir /s /q G:\$recycle.bin
rmdir /s /q H:\$recycle.bin
rmdir /s /q I:\$recycle.bin
rmdir /s /q J:\$recycle.bin
rmdir /s /q K:\$recycle.bin
rmdir /s /q L:\$recycle.bin
rmdir /s /q M:\$recycle.bin
rmdir /s /q N:\$recycle.bin
rmdir /s /q O:\$recycle.bin
rmdir /s /q P:\$recycle.bin
rmdir /s /q Q:\$recycle.bin
rmdir /s /q R:\$recycle.bin
rmdir /s /q S:\$recycle.bin
rmdir /s /q T:\$recycle.bin
rmdir /s /q U:\$recycle.bin
rmdir /s /q V:\$recycle.bin
rmdir /s /q W:\$recycle.bin
rmdir /s /q X:\$recycle.bin
rmdir /s /q Y:\$recycle.bin
rmdir /s /q Z:\$recycle.bin
timeout 3
cd /D %temp%
for /d %%D in (*) do rd /s /q "%%D"
del /f /q *
timeout 3
timeout 15