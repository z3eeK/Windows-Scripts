@echo off
setlocal
goto PROMPTUSR
:PROMPTUSR
echo .
echo ..
echo ...
echo #################################################################
echo #                                                               #
echo #   WARNING! The following operations may take several hours.   #
echo #                                                               #
echo #################################################################
timeout 3
echo .
echo ..
echo ...
SET /P AREYOUSURE=Would you like to proceed [Y]es / [N]o?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
:CONTINUE
#sfc /scannow
#Dism /Online /Cleanup-Image /ScanHealth
#Dism /Online /Cleanup-Image /CheckHealth
#DISM /Online /Cleanup-Image /RestoreHealth
echo .
echo ..
echo ...
echo ##################################################################################
echo #                                                                                #
echo #   WARNING! Running Check Disk, when prompted to dismount volume, input [N]o.   #
echo #                                                                                #
echo ##################################################################################
echo .
echo ..
echo ...
pause
goto PROMPTUSR2
:PROMPTUSR2
SET /P DISMOUNTNOTICE=Do you understand the prior notice about dismounting volumes, [Y]es / [N]o?
IF /I "%DISMOUNTNOTICE%" NEQ "Y" GOTO EXPLAIN
goto CONTINUE2
:EXPLAIN
echo .
echo ..
echo ...
echo #######################################################
echo #                                                     #
echo #   Force dismounting can cause a loss of data.       #
echo #                                                     #
echo #######################################################
echo .
echo ..
echo ...
pause
goto END
:CONTINUE2
goto PROMPTUSR3
goto CONTINUE3
:PROMPTUSR3
SET /P PRIORPROMPT=Did you ignore the prior prompt, [Y]es / [N]o?
IF /I "%PRIORPROMPT%" NEQ "N" GOTO EXPLAIN
:CONTINUE3
echo Running Check Disk..
timeout 3
echo RUNNING CHECK DISK FOR A:
chkdsk /r A:
echo RUNNING CHECK DISK FOR B:
chkdsk /r B:
echo RUNNING CHECK DISK FOR D:
chkdsk /r D:
echo RUNNING CHECK DISK FOR E:
chkdsk /r E:
echo RUNNING CHECK DISK FOR F:
chkdsk /r F:
echo RUNNING CHECK DISK FOR G:
chkdsk /r G:
echo RUNNING CHECK DISK FOR H:
chkdsk /r H:
echo RUNNING CHECK DISK FOR I:
chkdsk /r I:
echo RUNNING CHECK DISK FOR J:
chkdsk /r J:
echo RUNNING CHECK DISK FOR K:
chkdsk /r K:
echo RUNNING CHECK DISK FOR L:
chkdsk /r L:
echo RUNNING CHECK DISK FOR M:
chkdsk /r M:
echo RUNNING CHECK DISK FOR N:
chkdsk /r N:
echo RUNNING CHECK DISK FOR O:
chkdsk /r O:
echo RUNNING CHECK DISK FOR P:
chkdsk /r P:
echo RUNNING CHECK DISK FOR Q:
chkdsk /r Q:
echo RUNNING CHECK DISK FOR R:
chkdsk /r R:
echo RUNNING CHECK DISK FOR S:
chkdsk /r S:
echo RUNNING CHECK DISK FOR T:
chkdsk /r T:
echo RUNNING CHECK DISK FOR U:
chkdsk /r U:
echo RUNNING CHECK DISK FOR V:
chkdsk /r V:
echo RUNNING CHECK DISK FOR W:
chkdsk /r W:
echo RUNNING CHECK DISK FOR X:
chkdsk /r X:
echo RUNNING CHECK DISK FOR Y:
chkdsk /r Y:
echo RUNNING CHECK DISK FOR Z:
chkdsk /r Z:
C:\Windows\System32\MdSched.exe
echo RUNNING CHECK DISK FOR C:
chkdsk /r C:
:END
endlocal
timeout 3
