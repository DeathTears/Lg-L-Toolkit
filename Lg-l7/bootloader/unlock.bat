@echo off
cls
@SET ADB=c:\l7cwm\adb
%ADB% wait-for-device
%ADB% push emmc_appsboot.bin /data/local/tmp/emmc_appsboot.bin
%ADB% shell su -c "dd if=/data/local/tmp/emmc_appsboot.bin of=/dev/block/mmcblk0p5 bs=4096"
%ADB% reboot
