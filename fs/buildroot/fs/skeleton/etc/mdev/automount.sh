#!/bin/sh

MNTPATH=$1
LOGPATH=/dev/console

if [ "$1" == "" ]; then
	echo ""
	echo "automount.sh parameter is none" > $LOGPATH
    exit 1
fi

mounted=`mount | grep $MNTPATH`
MNTPATH=$2

if [ "$mounted" = "" ]; then
	echo ""
    echo "Mount : $1 -> $MNTPATH" > $LOGPATH
	mkdir -p $MNTPATH
    mount /dev/$1 $MNTPATH
	wait
    echo "Done  : mount $MNTPATH" > $LOGPATH
else
	echo ""
	echo "Umount: $MNTPATH" > $LOGPATH
    umount $MNTPATH
	wait
    rmdir  $MNTPATH
	echo ""
    echo "Done  : umount $MNTPATH" > $LOGPATH
fi

exit 0
