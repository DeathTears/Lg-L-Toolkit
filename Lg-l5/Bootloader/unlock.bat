@echo off
adb push emmc_appsboot.bin ecc
dd if=/sdcard/emmc_appsboot.bin of=/dev/block/mmcblk0p5
