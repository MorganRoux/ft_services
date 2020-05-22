#!/bin/sh

# openrc
# touch /run/openrc/softlevel
# rc-update add influxdb default


mkdir -p /etc/influxdb
mkdir -p /var/lib/influxdb
mv ./influxdb.conf /etc/influxdb/
chown influxdb:influxdb /etc/influxdb/
chown influxdb:influxdb /var/lib/influxdb
# rc-service influxdb start

# influxd -config /etc/influxdb/influxdb.conf
sleep infinity && wait

# CREATE USER admin WITH PASSWORD 'admin' WITH ALL PRIVILEGES;