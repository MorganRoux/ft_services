openrc
touch /run/openrc/softlevel
rc-update add mariadb default

/etc/init.d/mariadb setup
chown mysql:mysql /var/lib/mysql
rc-service mariadb restart

mysql -u root < /etc/config.sql
sleep infinity && wait