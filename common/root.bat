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
echo Rooting your phone...
echo.
echo.
echo.
echo Starting....
echo Your phone will reboot into recovery mode,
echo if you DO NOT have a custom recovery, this will be useless 
echo and it will wipe ALL your datas!!!!!
echo If you have already installed a Custom recovery, 
pause
@adb root
echo Waiting your Device...
@adb wait-for-device
@adb reboot recovery
@adb wait-for-device
echo Wiping Old files....
adb shell mount /system
adb shell mount /data
adb shell rm -f /system/bin/su
@adb shell rm -f /system/xbin/su
@adb shell rm -f /system/xbin/daemonsu
@adb shell rm -f /system/bin/.ext/.su
@adb shell rm -f /system/etc/install-recovery.sh
@adb shell rm -f /system/etc/init.d/99SuperSUDaemon
@adb shell rm -f /system/etc/.installed_su_daemon
@adb shell rm -f /system/app/Superuser.apk
@adb shell rm -f /system/app/Superuser.odex
@adb shell rm -f /system/app/SuperUser.apk
@adb shell rm -f /system/app/SuperUser.odex
@adb shell rm -f /system/app/superuser.apk
@adb shell rm -f /system/app/superuser.odex
@adb shell rm -f /system/app/Supersu.apk
@adb shell rm -f /system/app/Supersu.odex
@adb shell rm -f /system/app/SuperSU.apk
@adb shell rm -f /system/app/SuperSU.odex
@adb shell rm -f /system/app/supersu.apk
@adb shell rm -f /system/app/supersu.odex
@adb shell rm -f /data/dalvik-cache/*com.noshufou.android.su*
@adb shell rm -f /data/dalvik-cache/*com.koushikdutta.superuser*
@adb shell rm -f /data/dalvik-cache/*com.mgyun.shua.su*
@adb shell rm -f /data/dalvik-cache/*Superuser.apk*
@adb shell rm -f /data/dalvik-cache/*SuperUser.apk*
@adb shell rm -f /data/dalvik-cache/*superuser.apk*
@adb shell rm -f /data/dalvik-cache/*eu.chainfire.supersu*
@adb shell rm -f /data/dalvik-cache/*Supersu.apk*
@adb shell rm -f /data/dalvik-cache/*SuperSU.apk*
@adb shell rm -f /data/dalvik-cache/*supersu.apk*
@adb shell rm -f /data/dalvik-cache/*.oat
@adb shell rm -f /data/app/com.noshufou.android.su-*
@adb shell rm -f /data/app/com.koushikdutta.superuser-*
@adb shell rm -f /data/app/com.mgyun.shua.su-*
@adb shell rm -f /data/app/eu.chainfire.supersu-*
@adb shell cp /system/app/Maps.apk /Maps.apk
@adb shell cp /system/app/GMS_Maps.apk /GMS_Maps.apk
@adb shell cp /system/app/YouTube.apk /YouTube.apk
@adb shell rm /system/app/Maps.apk
@adb shell rm /system/app/GMS_Maps.apk
@adb shell rm /system/app/YouTube.apk
echo Loading Files..
adb shell mkdir /tmp/supersu
adb push C:\LgTool\common\Root\supersu /emmc/
adb shell mv /emmc/supersu /tmp/
@adb shell mkdir /system/bin/.ext
@adb shell cp /tmp/supersu/arm/su /system/xbin/daemonsu
@adb shell cp /tmp/supersu/arm/su /system/xbin/su
@adb shell cp /tmp/supersu/arm//su /system/bin/.ext/.su
@adb shell cp /tmp/supersu/common/Superuser.apk /system/app/Superuser.apk
@adb shell cp /tmp/supersu/common/install-recovery.sh /system/etc/install-recovery.sh
@adb shell cp /tmp/supersu/common/99SuperSUDaemon /system/etc/init.d/99SuperSUDaemon
@adb shell cp /Maps.apk /system/app/Maps.apk
@adb shell cp /GMS_Maps.apk /system/app/GMS_Maps.apk
@adb shell cp /YouTube.apk /system/app/YouTube.apk
@adb shell rm /Maps.apk
@adb shell rm /GMS_Maps.apk
@adb shell rm /YouTube.apk
@adb shell set_perm 0 0 0777 /system/bin/.ext
@adb shell set_perm 0 0 06755 /system/bin/.ext/.su
@adb shell set_perm 0 0 06755 /system/xbin/su
@adb shell set_perm 0 0 0755 /system/xbin/daemonsu
@adb shell set_perm 0 0 0755 /system/etc/install-recovery.sh
@adb shell set_perm 0 0 0755 /system/etc/init.d/99SuperSUDaemon
@adb shell set_perm 0 0 0644 /system/etc/.installed_su_daemon
@adb shell set_perm 0 0 0644 /system/app/Superuser.apk
@adb shell set_perm 0 0 0644 /system/app/Maps.apk
@adb shell set_perm 0 0 0644 /system/app/GMS_Maps.apk
@adb shell set_perm 0 0 0644 /system/app/YouTube.apk
@adb shell ch_con /system/bin/.ext/.su
@adb shell ch_con /system/xbin/su
@adb shell ch_con /system/xbin/daemonsu
@adb shell ch_con /system/etc/install-recovery.sh
@adb shell ch_con /system/etc/init.d/99SuperSUDaemon
@adb shell ch_con /system/etc/.installed_su_daemon
@adb shell ch_con /system/app/Superuser.apk
@adb shell ch_con /system/app/Maps.apk
@adb shell ch_con /system/app/GMS_Maps.apk
@adb shell ch_con /system/app/YouTube.apk
@adb shell /system/xbin/su --install
@adb shell umount /system
@adb shell umount /data
echo Done!
echo Rooted Succesfully!
echo Rebooting
@adb reboot
C:\LgTool\Start.bat





