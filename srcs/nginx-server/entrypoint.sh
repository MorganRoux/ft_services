#!/bin/sh

openrc
touch /run/openrc/softlevel
rc-update add nginx default
rc-service nginx restart
telegraf
#sleep infinity && wait