#!/bin/sh

MNTPATH=$1
LOGPATH=/dev/console
CMDLINE=`cat /proc/cmdline | grep -c update`

if [ "$1" == "" ]; then
    echo "automount.sh parameter is none" > $LOGPATH
    exit 1
fi

mounted=`mount | grep $MNTPATH`
MNTPATH=$2

if [ "$mounted" = "" ]; then
	
    echo "Mount : $1 -> $MNTPATH" > $LOGPATH
	mkdir -p $MNTPATH

	if [ ${CMDLINE} == "1" ]; then
	    if [ "$MNTPATH" == "/mnt/mmc" ]; then
			echo ""
		else
		    mount /dev/$1 $MNTPATH
		fi
	else
	    mount /dev/$1 $MNTPATH
	fi

    wait

	if [ ${CMDLINE} == "1" ]; then
	    if [ "$MNTPATH" == "/mnt/mmc" ]; then
			echo ""
		else
		    echo "Done  : mount $MNTPATH" > $LOGPATH
		    if [ "$MNTPATH" == "/mnt/mmc" ]; then
				chown -R default.default /mnt/mmc
		        if [ -f /mnt/mmc/init.sh ]; then
		            echo ""
		        else
		            busybox cp /usr/etc/.init.sh /mnt/mmc/init.sh
				fi
		        /mnt/mmc/init.sh
		    fi
		fi
	else
		echo "Done  : mount $MNTPATH" > $LOGPATH
        if [ "$MNTPATH" == "/mnt/mmc" ]; then
	        chown -R default.default /mnt/mmc
	        if [ -f /mnt/mmc/init.sh ]; then
		        echo ""
            else
	            busybox cp /usr/etc/.init.sh /mnt/mmc/init.sh
            fi
            /mnt/mmc/init.sh
	    fi
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
