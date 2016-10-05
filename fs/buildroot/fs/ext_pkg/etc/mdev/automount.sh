#!/bin/sh

MNTPATH=$1
LOGPATH=/dev/console

if [ "$1" == "" ]; then
    echo "automount.sh parameter is none" > $LOGPATH
    exit 1
fi

mounted=`mount | grep $MNTPATH`
MNTPATH=$2

if [ "$mounted" = "" ]; then
    echo "Mount : $1 -> $MNTPATH" > $LOGPATH
	mkdir -p $MNTPATH
    mount /dev/$1 $MNTPATH
    wait
	chown -R default.default /mnt/mmc
    echo "Done  : mount $MNTPATH" > $LOGPATH
    if [ "$MNTPATH" == "/mnt/mmc" ]; then
        if [ -f /mnt/mmc/init.sh ]; then
            echo ""
        else
            busybox cp /usr/etc/.init.sh /mnt/mmc/init.sh
		fi
        /mnt/mmc/init.sh
    fi

	if [ "$MNTPATH" == "/mnt/usb" ]; then
		sleep 3
		/usr/etc/update_check.sh
	fi
else
    echo "Umount: $MNTPATH" > $LOGPATH
    umount $MNTPATH
    wait
    rmdir  $MNTPATH
    echo "Done  : umount $MNTPATH" > $LOGPATH
fi

exit 0
