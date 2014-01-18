@echo off
cls
adb push emmc_appsboot.bin ecc
dd if=/data/local/tmp/emmc_appsboot.bin of=/dev/block/mmcblk0p5 bs=4096

