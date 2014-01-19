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
if %S%==3 goto Root
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
# --> have to finish this




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
echo.
set /p S= ? :
if %device==e400 echo Your lg l3 is already Unlocked
if %device==e610 C:\Lg-l5\Bootloader\unlock.bat
if %device==p700 C:\Lg-l7\bootloader\unlock.bat
echo.
echo Invalid Input? Try again!...
pause goto Bootloader

#Root -----------------------------------------------------------------------------------------------------


:Root
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
echo Root Phone
echo.
echo.
echo.
echo Make sure You have already installed a custom recovery,
echo if not close this and select Install>Custom Recovery
pause
@adb reboot recovery
echo Waiting for device...
@adb wait-for-device
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
echo 4- Take a screensot
echo 5- Record Screen (4.4+ ONLY)
echo.
echo 0- Go back
set /p S= ? :
if %S%==1 reb
if %S%==2 shelll
if %S%==3 crack
if %S%==4 Scre
if %S%==3 Reco
echo Invalid Input? Try again!...
pause goto advanced




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
set /p S= ? :
if %S%==1 @adb reboot goto :startui
if %S%==2 @adb reboot recovery goto :startui
if %S%==3 @adb reboot bootloader goto :startui
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
echo 4- Import Music
echo 5- Export Music
echo.
echo 0- Go back
set /p S= ? :
if %S%==1 goto pussh
if %S%==2 goto pulll
if %S%==3 goto photos
if %S%==4 goto music1
if %S%==5 goto music2
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
SET /P FIDIR= Type here File path (It can not contain spaces) :
SET /P PUSH= Drag the file you want to pus here, then press ENTER
adb pull %FIDIR% C:\LgTool\Pulled\
pause
goto sync
