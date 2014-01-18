ECHO OFF
CLS
ECHO DON'T TOUCH THE DEVICE OR UNPLUG WHILE ROOTING!
ECHO PUSH FILES
@adb kill-server
@adb wait-for-device
@adb shell rm /data/local/installbusybox > nul
@adb shell rm /data/local/installbusybox2 > nul
@adb shell rm /data/local/root > nul
@adb shell rm /data/local/root2 > nul
@adb shell rm /data/local/sysro > nul
@adb shell rm /data/local/sysro2 > nul
@adb shell rm /data/local/sysrw > nul
@adb shell rm /data/local/sysrw2 > nul
@adb shell rm /data/local/unroot > nul
@adb shell rm /data/local/unroot2 > nul
@adb shell rm /data/local/busybox > nul
@adb shell rm /data/local/su > nul
@adb shell rm /data/local/Superuser.apk > nul
@adb push busybox /data/local/busybox
@adb push su /data/local/su
@adb push Superuser.apk /data/local/Superuser.apk
@adb shell chmod 777 /data/local/busybox
@adb shell chmod 755 /data/local/su
@adb shell chmod 755 /data/local/Superuser.apk
@adb shell mv /data/local/tmp /data/local/tmp.bak
@adb shell ln -s /data /data/local/tmp
@adb shell rm /data/local.prop > nul
@adb shell "mount -wo remount rootfs /"
@adb shell "mount -o remount,rw -t ext4 /dev/block/mmcblk0p33 /system"
@adb shell "cat /data/local/busybox > /system/xbin/busybox"
@adb shell "chmod 777 /system/xbin/busybox"
@adb shell "/system/xbin/busybox --install -s /system/xbin"
@adb shell "busybox cp /data/local/Superuser.apk /system/app/Superuser.apk"
@adb shell "busybox cp /data/local/su /system/xbin/su"
@adb shell "chown 0.0 /system/xbin/su"
@adb shell "chmod 06755 /system/xbin/su"
@adb shell "chmod 644 /system/app/Superuser.apk"
@adb shell "rm /data/local.prop"
@adb shell "rm /data/local/tmp"
@adb shell "mv /data/local/tmp.bak /data/local/tmp"
ECHO.
ECHO REBOOT
@adb reboot
