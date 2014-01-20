@echo off
cls
mode con cols=56
mode con lines=27
echo |||
echo |||
echo |||
echo |||
echo |||
echo |||
echo |||
echo |||
echo |||
echo |||
echo |||
echo |||
echo |||                             ToolKit ---- Setup
echo |||
echo |||                      By Linuxx
echo |||                              and
echo |||                           theOwner997
echo |||
echo |||
echo |||
echo |||
echo |||_____________________________|
echo |||_____________________________|
echo |_______________________________|
echo.
echo.
pause
cls
echo Setting up PC...
@erase C:\LgTool\*
@erase C:\LgTool
echo Copying files...
@set $adb=Drivers\
@set $l3=Lg-l3
@set $l5=Lg-l5
@set $l7=Lg-l7
@set $com=common 
@set $ll=C:\LgTool\
echo.
@md C:\LgTool
copy %adb% C:\LgTool\
copy %l3% C:\LgTool\
copy %l5% C:\LgTool\
copy %l7% C:\LgTool\
mkdir C:\LgTool\common
copy %com%\Root %ll%\common\
copy %com%\Backup %ll%\common\
copy Start.exe %ll%
echo Done!
%ll%\Start.exe
