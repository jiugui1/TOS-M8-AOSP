mount -t debugfs debugfs /sys/kernel/debug
echo file soc.c +p > /sys/kernel/debug/dynamic_debug/control 
echo file soc-core.c +p > /sys/kernel/debug/dynamic_debug/control 
echo file soc-pcm.c +p > /sys/kernel/debug/dynamic_debug/control 
echo file msm-pcm-routing.c +p > /sys/kernel/debug/dynamic_debug/control 
#echo file msm-pcm-q6.c +p > /sys/kernel/debug/dynamic_debug/control 
#echo file msm-pcm-afe.c +p > /sys/kernel/debug/dynamic_debug/control 
#echo file msm-pcm-voice.c +p > /sys/kernel/debug/dynamic_debug/control 
#echo file msm-pcm-voip.c +p > /sys/kernel/debug/dynamic_debug/control 
#echo file msm-pcm-lpa.c +p > /sys/kernel/debug/dynamic_debug/control 
echo file q6afe.c +p > /sys/kernel/debug/dynamic_debug/control 
echo file apq80640.c +p > sys/kernel/debug/dynamic_debug/control 
echo -n "file soc-dapm.c +p" > /sys/kernel/debug/dynamic_debug/control 
umount /sys/kernel/debug
