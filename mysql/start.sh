#!/bin/sh
​
openrc
touch /run/openrc/softlevel
rc-update add mariadb default



#/usr/bin/mysql_install_db --user=mysql --datadir="/var/lib/mysql"
/etc/init.d/mariadb setup
rc-service mariadb restart
./init_db.sh > /dev/null 2>&1 &
sleep infinity && wait