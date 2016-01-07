#!/sbin/sh
echo "" >> /system/build.prop
echo "# Sound Explosion Mode" >> /system/build.prop
echo "tunnel.audiovideo.decode=false" >> /system/build.prop
echo "media.aac_51_output_enabled=true" >> /system/build.prop
echo "mpq.audio.decode=true" >> /system/build.prop

sed -i '/tunnel.decode/s/true/false/g' /system/build.prop

