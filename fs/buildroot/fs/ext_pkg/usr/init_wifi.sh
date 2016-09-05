#!/bin/sh

insmod /root/wlan.ko
ifconfig wlan0 up
chmod +x /usr/sbin/*
chmod +x /usr/bin/*
wpa_supplicant -iwlan0 -c /usr/etc/wpa_supplicant.conf &
dhcpcd wlan0 &
