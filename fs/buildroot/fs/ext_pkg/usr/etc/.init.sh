#!/bin/bash

export PATH=$PATH:/mnt/mmc
syslogd
sleep 0.5

# cas
mkdir -p /data
ln -s /usr/etc/ca /data/ca
chmod 777 /data/ca
ln -s /usr/etc/eci /eci
