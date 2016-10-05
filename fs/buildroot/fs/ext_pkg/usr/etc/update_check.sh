#!/bin/bash

CMDLINE=`cat /proc/cmdline | grep -c update`

if [ ${CMDLINE} == "1" ]; then
	echo "Check update"
	/usr/etc/update.sh
fi
