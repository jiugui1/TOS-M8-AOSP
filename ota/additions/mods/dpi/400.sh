#!/sbin/sh
#Update ROM version
sed -i '/ro.sf.lcd_density=/s/480/400/g' /system/build.prop


