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

#Start Menu --------------------------------------------------------------------------------------------

:startui
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ####################################################################
echo.
echo.
echo Choose What Do you Want to Do
echo.
echo.
echo.
echo 1- Install
echo 2- Unlock Bootloader
echo 3- Root
echo 4- Backup and Restore
echo 5- Sync
echo.
echo 6- Advanced
echo.
echo.
echo.
echo 0-Exit
echo.
set /p S= ? :
if %S%==1 goto Installmenu
if %S%==2 goto Bootloader
if %S%==3 C:\LgTool\common\Root.bat
if %S%==5 goto sync
if %S%==4 goto backupc
if %S%==6 goto advanced
if %S%==0 goto exit
echo.
echo Invalid Input? Try again!...
pause goto startui

#Install --------------------------------------------------------------------------------------------------------

:Installmenu
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ####################################################################
echo.
echo Install Menu
echo.
echo.
echo.
echo 1- Install an app
echo 2- Install a recovery
echo.
echo 0- Go Back
echo.
set /p S= ? :
if %S%==1 goto installapk
if %S%==2 goto Recovery
if %S%==0 goto startui
echo.
echo Invalid Input? Try again!...
pause goto Installmenu



:installapk
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ####################################################################
echo.
echo Install an app
echo.
SET /P APK= Drag your apk file here, then press Enter
adb install %APK%
pause
goto startui



:Recovery
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ####################################################################
echo.
echo Installing recovery....
echo ----->Your Bootloader must be UNLOCKED, if not go back and unlock it
echo.
echo.
echo.
echo Choose your Device (look at codename above)
echo.
echo 1- e400
echo 2- e610
echo 3- p700
echo.
echo 0- Go back
echo.
set /p S= ? :
if %S%==1 goto l3rec
if %S%==2 goto l5rec
if %S%==3 goto l7rec
if %S%==0 goto startui
echo.
echo Invalid Input? Try again!...
pause goto Installmenu

:l3rec
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ####################################################################
echo.
echo Installing recovery....
echo.
echo.
echo.
echo Installing CWM recovery on your Lg L3 (e400)....
@adb reboot bootloader
@fastboot devices
echo Installing.......
@fastboot flash recovery C:\LgTool\Lg-l3\Recovery\recovery.img
@fastboot reboot
echo Done!
pause
goto Installmenu


:l5rec
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ####################################################################
echo.
echo Installing recovery....
echo.
echo.
echo.
echo Installing CWM recovery on your Lg L5 (e610)....
@adb reboot bootloader
@fastboot devices
echo Installing.......
@fastboot flash recovery C:\LgTool\Lg-l5\Recovery\recovery.img
@fastboot reboot
echo Done!
pause
goto Installmenu


:l7rec
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ####################################################################
echo.
echo Installing recovery....
echo.
echo.
echo.
echo Installing CWM recovery on your Lg L7 (p700)....
@adb reboot bootloader
@fastboot devices
echo Installing.......
@fastboot flash recovery C:\LgTool\Lg-l7\Recovery\recovery.img
@fastboot reboot
echo Done!
pause
goto Installmenu


#Bootloader -----------------------------------------------------------------------------------------

:Bootloader
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ####################################################################
echo.
echo Unlock Bootloader
echo.
echo.
echo.
echo Select your model (look at CODENAME)
echo 1- Lg L5 E610
echo 2- Lg L7 P700
echo.
echo 0- Go back
set /p S= ? :
if %S%==1 C:\Lg-l5\Bootloader\unlock.bat
if %S%==2 C:\Lg-l7\bootloader\unlock.bat
if %S%==0 goto startui
echo.
echo Invalid Input? Try again!...
pause goto Bootloader



#advanced -----------------------------------------------------------------------------------------------------
:advanced
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Advanced Menu
echo.
echo.
echo.
echo Choose what you want to do
echo.
echo 1- Reboot into..
echo 2- Run Shell
echo 3- Disable Lock screen Password/Pattern
echo 4- Record Screen (4.4+ ONLY)
echo.
echo 5- Credits and License
echo.
echo 0- Go Back
echo.
echo 0- Go back
set /p S= ? :
if %S%==1 goto reb
if %S%==2 goto shelll
if %S%==3 goto crack
if %S%==3 goto Reco
if %S%==0 goto startui
if %S%==5 goto credit
echo Invalid Input? Try again!...
pause goto advanced

:Reco
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Screen recorder
echo You need a 4.4 rom ( Look at API above, if it's 19 it's ok)
echo.
echo.
echo.
echo Press ctrl + c when u want to stop it
@adb shell mkdir /sdcard/tmp
adb shell screenrecord /sdcard/tmp/video.mp4
@adb pull /sdcard/tmp/video.mp4 C:\LgTool\Pulled\
@adb shell rm -r /sdcard/tmp
echo Done!
pause
goto advanced

:shelll
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Shell
echo.
echo Type exit when you've done!
adb shell
pause
goto advanced


:reb
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Reboot Options
echo.
echo 1- Reboot system
echo 2- Reboot Recovery
echo 3- Reboot Bootloader
echo.
echo 0- Go Back
set /p S= ? :
if %S%==1 @adb reboot goto startui
if %S%==2 @adb reboot recovery goto startui
if %S%==3 @adb reboot bootloader goto startui
if %S%==0 goto advanced
echo Invalid Input? Try again!...
pause goto reb



:crack
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Disable Lock Screen Pattern / Password
echo.
echo.
echo --->Your Phone must be in RECOVERY MODE!!!!!!
echo ---> GO TO "MOUNTS AND STORAGE" AND SELECT "MOUNT /DATA"
PAUSE
echo.
echo What do you want to remove?
echo.
echo 1- Pattern
echo 2- Password
echo.
echo 0- Go back
set /p S= ? :
if %S%==1 @adb shell rm /data/system/gesture.key
if %S%==2 @adb shell rm /data/system/gesture.key
if %S%==0 goto advanced
echo Invalid Input? Try again!...
pause goto crack

:credit
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Credits:
echo.
echo.
echo.
echo -> Linuxx [Program  and Scripts Developement]
echo -> TheOwner997 [Testing and Unlock Bootloader Scripts]
echo.
echo.
echo.
echo.
echo License and Sources
echo.
echo.
echo.
echo -> Relased Under Apache License 2.0 
echo   Obtain a Free Copy Here: http://www.apache.org/licenses/
echo.
echo -> Lg L Tool is Full Open Source
echo   http://github.com/ionolinuxnoparty/Lg-L-Toolkit/
echo    If you want to improve it or tell us a bug you found,
echo    open a issue and tell us everything.
echo.
echo.
echo.
echo.
echo Disclaimer
echo.
echo We are not responsible for bricked devices, dead SD cards,
echo thermonuclear war, or you getting fired because the alarm app failed. Please
echo ask if you have any concerns about features included in this ROM
echo before flashing it! YOU are choosing to make these modifications, and if
echo you point the finger at us for messing up your device,
echo We will laugh at you.
echo.
echo.
echo.
pause
goto advanced

#Sync ------------------------------------------------------------------------------------------------------------
:sync
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Sync Menu
echo.
echo.
echo.
echo Choose what you want to do
echo.
echo 1- Push a file from pc to phone
echo 2- Pull a file from phone to pc
echo 3- Import Photos
echo.
echo 0- Go back
set /p S= ? :
if %S%==1 goto pussh
if %S%==2 goto pulll
if %S%==3 goto photo
if %S%==0 goto advanced
echo Invalid Input? Try again!...
pause goto sync

:pussh
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Push a file
echo.
echo.
echo.
SET /P PUSH= Drag the file you want to pus here, then press ENTER
adb push %PUSH% sdcard/
pause
goto sync

:pulll
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Push a file "to C:\LgTool\Pulled"
echo.
echo.
echo.
SET /P FIDIR= Type here File path (It can NOT contain spaces) :
adb pull %FIDIR% C:\LgTool\Pulled\
pause
goto sync

:photo
cls
echo ###################################################################
echo -->Device:
adb shell grep ro.product.model= system/build.prop
echo -->Codename
adb shell grep ro.product.device= system/build.prop
echo -->Android version:
adb shell grep ro.build.version.release= system/build.prop
echo -->Api:
adb shell grep ro.build.version.sdk= system/build.prop
echo Status:
adb get-state
echo Serial Number:
adb get-serialno
echo ###################################################################
echo.
echo Import Camera Photos
echo.
echo.
echo.
echo Photos will be pull to "C:\LgTool\Pulled"
echo.
pause
echo Copying camera photos...
@adb pull /sdcard/DCIM C:\LgTool\Pulled\
echo Done!
pause 
goto sync
