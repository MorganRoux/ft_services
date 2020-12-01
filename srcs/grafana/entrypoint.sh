#!/bin/sh

# openrc
# touch /run/openrc/softlevel
# rc-update add telegraf default
# rc-service telegraf restart

grafana-server & telegraf
#sleep infinity && wait