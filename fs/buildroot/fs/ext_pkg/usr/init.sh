#!/bin/sh

insmod /root/wlan.ko ifname=wlan0 if2name=p2p0
chmod +x /usr/sbin/*
chmod +x /usr/bin/*

syslogd

sleep 0.5

# p2p0
busybox ifconfig p2p0 up
#p2p_supplicant -s -B -Dnl80211 -ip2p0 -c /usr/etc/p2p_supplicant.conf

# hostap

# supplicant mode
#busybox ifconfig wlan0 up
#wpa_supplicant -s -B -Dnl80211 -iwlan0 -c /usr/etc/wpa_supplicant.conf
#udhcpc -iwlan0 &

# cas
mkdir -p /usr/etc/ca
mkdir -p /data
ln -s /usr/etc/ca /data/ca
chmod 777 /data/ca

echo 18d1 > /sys/class/android_usb/android0/idVendor
echo 4EE7 > /sys/class/android_usb/android0/idProduct
echo adb > /sys/class/android_usb/android0/functions
echo 1 > /sys/class/android_usb/android0/enable
