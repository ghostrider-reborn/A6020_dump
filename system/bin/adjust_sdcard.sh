#!/system/bin/sh
i=1
num=0
while :
do
#log -t ota-sdcard "try ..."$i
need_adjust=`ls /storage/emulated/ -l |grep "^d"|wc -l`
log -t ota-sdcard "emualted dir nums = "$need_adjust
if [ $need_adjust -eq 2 ]
then
log -t ota-sdcard "adjust inner sdcard success ."
break
elif [ $need_adjust -gt 2 ]
then
log -t ota-sdcard "try adjust inner adcard dir..."
for file in /storage/emulated/*
do
    if test -f $file
    then
        echo "move $file -> /storage/emulated/0/${file##*/}"
        log -t ota-sdcard "move $file -> /storage/emulated/0/${file##*/}"
        let num++
        mv $file /storage/emulated/0/${file##*/}
    fi
    if test -d $file && [ ${file##*/} != "0" ] && [ ${file##*/} != "obb" ]
    then
        echo "move $file -> /storage/emulated/0/${file##*/}"
        log -t ota-sdcard "move $file -> /storage/emulated/0/${file##*/}"
        let num++
        mv $file /storage/emulated/0/${file##*/}
    fi
done
fi
log -t ota-sdcard "waiting inner sdcard mount .."
sleep 2
#i=$(($i+1))
done
