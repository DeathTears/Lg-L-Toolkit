@echo off
cls
adb push recovery.img ecc
dd if=/data/local/tmp/recovery.img of=/dev/block/mmcblk0p17 bs=4096
