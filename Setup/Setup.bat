@echo off
cls


echo MBBG
echo MBBG
echo MBBG
echo MBBG
echo MBBG
echo MBBG
echo MBBG
echo MBBG
echo MBBG
echo MBBG
echo MBBG
echo MBBG
echo MBBG       ToolKit                ----       Setup
echo MBBG
echo MBBG                                     By Linuxx
echo MBBG                                   and
echo MBBG                             theOwner997
echo MBBG
echo MBBG
echo MBBG
echo MBBG
echo MBBGGGGGGGGGGGGGHHHHHIIIIIII
echo MBBBBBBBBBBBBBBBBGGGGGGGGHHI
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMI
echo.
echo.
pause
cls
echo Setting up PC...
@erase C:\LgTool\*
@erase C:\LgTool
echo Copying files...
echo.
@md C:\LgTool
@copy Drivers\* C:\LgTool\
@copy Lg-l3 C:\LgTool\
@copy Lg-l5 C:\LgTool\
@copy Lg-l7 C:\LgTool\
@mkdir C:\LgTool\common
@copy common\RootC:\LgTool\common\
@copy common\Backup C:\LgTool\common\
@copy common\Start.bat C:\LgTool\
@echo Done!
C:\LgTool\Start.bat
