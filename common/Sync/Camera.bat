@echo off
cls
adb wait-for-device
echo Photos will be pull to C:\LgTool\Pulled
echo.
pause
echo Copying camera photos...
@adb pull /sdcard/DCIM C:\LgTool\Pulled\
echo Done!
pause 
