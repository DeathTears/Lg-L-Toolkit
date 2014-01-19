#if it's e400 = l3
#if it's e610 = l5
#if it's p700 = l7




@echo off
cls
color F2
mode con cols=81
mode con lines=45
echo.
echo    ###########################################################################
echo    ##                                                                       ## 
echo    ##                         iN                iZ                          ## 
echo    ##                          Uo               B                           ## 
echo    ##                           vLioOBBBBBBMqviq                            ##
echo    ##                          vMBBBBBBBBBBBBBBBVi                          ## 
echo    ##                        FBBBBBMOOOOOOOOMBBBBBMi                        ## 
echo    ##                      iBBBB  iBOGGGGGGGBP  oBBBI                       ## 
echo    ##                     iBBMMM  iBOGGGGGGGBk  uBMBBN                      ##
echo    ##                     BBMOOBBBBMOOOOOOOOMBBBBMOMBBv                     ##
echo    ##                    IBBBBBBBBBBBBBBBBBBBBBBBBBBBBB                     ## 
echo    ##                    YNUAAAAAAAAAAAAAAAAAAAAAAAAAVG                     ##
echo    ##              VZPi                                   uZqr              ## 
echo    ##            iBBBBBF qBBBBBBBBBBBBBBBBBBBBBBBBBBBBB  BBBBBM             ## 
echo    ##            XBMOMBM uBMMMMMMMMMMMMMMMMMMMMMMMMMMBB iBBOMBB             ## 
echo    ##            UBOGOBZ JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMGOBB             ## 
echo    ##            uBOGOBE JBOGGGGGGGGGGGGGGGGGGGGGGGGGMB iBMGOBB             ## 
echo    ##            UBOGOBE JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMGOBB             ## 
echo    ##            UBOGOBE JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMGOBB             ## 
echo    ##            uBOGOBE JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMGOBB             ## 
echo    ##            UBOGOBE JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMGOBB             ## 
echo    ##            FBMOOBG JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMOOBB             ## 
echo    ##            uBBBBBM uBOGGGGGGGGGGGGGGGGGGGGGGGGGMB iBBBBBB             ## 
echo    ##             FBBBM  VBOGGGGGGGGGGGGGGGGGGGGGGGGGMB  jBBBBi             ## 
echo    ##                    PBMGGGGGGGGGGGGGGGGGGGGGGGGOBB                     ## 
echo    ##                    XBBBMMOOGGGGOMMMMOOGGGGOMMMBBB                     ##  
echo    ##                     PBBBBBMOGGOBBBBBBMOGGOMBBBBBi                     ## 
echo    ##                          uBOGOBG    rBMGGMB                           ## 
echo    ##                          vBOGOBG    iBMGGBB                           ## 
echo    ##                          uBOGOBM    iBMGGBB                           ## 
echo    ##                          oBMGOBB    iBMGOBB                           ## 
echo    ##                          XBBMBBB    rBBMMBB                           ## 
echo    ##                           BBBBBi     MBBBBj                           ## 
echo    ##                             ii         ii                             ## 
echo    ##                                                                       ## 
echo    ##                                                                       ##
echo    ##              Lg L Toolkit    by linuxx and theowner997                ##
echo    ##                                                                       ##
echo    ###########################################################################
ECHO.
pause
color 2
goto startui


:startui
cls
echo ###################################################################
echo Device:
adb shell cat /system/build.prop | grep "ro.product.device"
echo Android version:
adb shell cat /system/build.prop | grep "ro.build.release.version.device"
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################echo.
echo.
echo Choose What Do you Want to Do
echo.
echo.
echo.
echo 1- Unlock Bootloader
echo 2- Sync
echo 3- Root
echo 4- Backup and Restore
echo 5- Run Shell
echo 6- Reboot into
echo.
echo.
echo.
echo 0-Exit
echo.
set /p S= ? :
if %S%==1 goto Bootloader
if %S%==2 goto sync
if %S%==3 goto Root
if %S%==5 goto shelll
if %S%==4 goto backupc
if %S%==6 goto reb
if %S%==0 goto exit
echo.
echo Invalid Input? Try again!...
pause goto startui


:Bootloadercls
cls
echo ###################################################################
echo Device:
adb shell cat /system/build.prop | grep "ro.product.device"
echo Android version:
adb shell cat /system/build.prop | grep "ro.build.release.version.device"
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
if %device==e400 echo Your lg l3 is already Unlocked
if %device==e610 C:\Lg-l5\Bootloader\unlock.bat
if %device==p700 C:\Lg-l7\bootloader\unlock.bat

:Root
cls
echo ###################################################################
echo Device:
adb shell cat /system/build.prop | grep "ro.product.device"
echo Android version:
adb shell cat /system/build.prop | grep "ro.build.release.version.device"
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Root Phone
echo.
@adb reboot recovery
echo Waiting for device...
@adb wait-for-device
SET status= $adb get-state
@adb push root/update.zip /sdcard/
@adb push root/update.zip /emmc/
echo Now Select Install zip from sdcard
echo Choose Install Update.zip
pause
echo Wait until it works...
echo Press any key ONLY when it finish (It will say Done!)
pause
@adb shell rm /sdcard/update.zip
@adb shell rm /emmc/update.zip
@adb reboot
echo Done !
goto startui

:shelll
cls
SET device= $adb shell cat /system/build.prop | grep "ro.product.device"
SET Os= $adb shell cat /system/build.prop | grep "ro.build.release.version.device"
SET status= $adb get-state
SET serial= $adb get-serialno
echo ###################################################################
echo Device:                       $device #
echo Android version:              $Os #
echo Status:                       $status #
echo Serial Number:                $serial #
echo ###################################################################
echo.
echo Shell
echo.
echo Type exit when you've done!
adb shell

:reb
cls
SET device= $adb shell cat /system/build.prop | grep "ro.product.device"
SET Os= $adb shell cat /system/build.prop | grep "ro.build.release.version.device"
SET status= $adb get-state
SET serial= $adb get-serialno
echo ###################################################################
echo Device:                       $device #
echo Android version:              $Os #
echo Status:                       $status #
echo Serial Number:                $serial #
echo ###################################################################
echo.
echo Reboot Options
echo.
echo 1- Reboot system
echo 2- Reboot Recovery
echo 3- Reboot Bootloader
set /p S= ? :
if %S%==1 @adb reboot goto :startui
if %S%==2 @adb reboot recovery goto :startui
if %S%==3 @adb reboot bootloader goto :startui
echo Invalid Input? Try again!...
pause goto reb



