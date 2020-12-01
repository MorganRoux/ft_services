#!/bin/sh

openrc
touch /run/openrc/softlevel
rc-update add php-fpm7 default
rc-update add nginx default
rc-service nginx restart
rc-service php-fpm7 restart
telegraf
#sleep infinity && wait