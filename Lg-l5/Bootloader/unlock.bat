@echo off
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
echo Unlocking Bootloder....
@adb root
echo Looking for device....
adb wait-for-device
echo Found a Device, if it's a Lg L5,
pause
adb remount
echo Pushing Bootloader.....
@adb push emmc_appsboot.bin /sddcard/
echo Writing.....
@adb shell dd if=/sdcard/emmc_appsboot.bin of=/dev/block/mmcblk0p5
@adb reboot
@adb wait-for device
@adb shell rm /sdcard/emmc_appsboot.bin
echo Done!
C:\LgTool\common\Start.bat
