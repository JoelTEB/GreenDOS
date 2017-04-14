@echo off
title GreenDOS Beta - A Virtual OS By Joel Young
color 0a
echo Welcome to GreenDOS Beta
echo To use GreenDOS in beta you must enter a password
echo Entering an incorrect password will cause GreenDOS to terminat itself...
pause
echo Enter password
set /p PASSWORD=
if %PASSWORD% == green (
goto GREENDOS
)
:GREENDOS
echo #########################
echo Welcome to GreenDOS Beta
echo #########################
echo Suported commands:
echo SHUTDOWN
echo INFO
echo HELP
echo UPDATE
echo VERSION
echo If you do not enter these exact commands, GreenDOS will fail.
set /p COMMAND=
if %COMMAND% == SHUTDOWN exit
if %COMMAND% == INFO (
echo GreenDOS Beta - A Virtual OS By Joel Young
echo.
echo Made in:
echo MS-DOS Batch
echo.
echo Special thanks:
echo Microsoft
echo The various people that did tutorials on how to make a OS
echo FreeDOS because that OS inspired me to make this
echo ...And Finally...
echo YOU for using this software
echo.
echo Copyright Joel Young 2017
pause
goto GREENDOS
)
if %COMMAND% == HELP (
echo SHUTDOWN closes the OS
echo INFO prints information abaout the OS
echo HELP displays the help menu, it is also the command you just entered!
echo ...I AM SMART!
echo UPDATE installes the latest update
pause
goto GREENDOS
)
if %COMMAND% == UPDATE (
echo Installing updates...
echo.
echo Time left:
timeout /nobreak /t 3649
echo Update failed
pause
echo I tricked you, there was no update!
echo You waisted an hour of your time!
pause
goto GREENDOS
)
if %COMMAND% == VERSION (
echo GreenDOS v0.1.3 Beta
pause
echo Did the download page NOT make that clear enough?!
pausegoto GREENDOS
)

