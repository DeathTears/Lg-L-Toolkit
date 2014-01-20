@echo off
cls
echo 
@adb root
adb wait-for-device
adb remount
adb push emmc_appsboot.bin /sddcard/
dd if=/sdcard/emmc_appsboot.bin of=/dev/block/mmcblk0p5
