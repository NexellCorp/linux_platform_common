#!/bin/sh

export PATH=$PATH:/mnt/mmc

insmod /root/wlan.ko ifname=wlan0 if2name=p2p0
chmod +x /usr/sbin/*
chmod +x /usr/bin/*

syslogd

sleep 0.5

# p2p0
busybox ifconfig p2p0 up
#p2p_supplicant -s -B -Dnl80211 -ip2p0 -c /usr/etc/p2p_supplicant.conf

# hostap
#busybox ifconfig wlan0 up
#wpa_supplicant -s -B -Dnl80211 -iwlan0 -c /usr/etc/wpa_supplicant.conf

# cas
mkdir -p /data
ln -s /usr/etc/ca /data/ca
chmod 777 /data/ca

uxtest&

