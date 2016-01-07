#!/sbin/sh
#Update ROM version
sed -i '/ro.sf.lcd_density=/s/480/440/g' /system/build.prop


