#!/bin/sh

openrc
touch /run/openrc/softlevel
rc-update add influxdb default

mkdir -p /var/lib/influxdb
chown influxdb:influxdb /etc/influxdb/
chown influxdb:influxdb /var/lib/influxdb
rc-service influxdb restart

telegraf 

# sleep infinity && wait
