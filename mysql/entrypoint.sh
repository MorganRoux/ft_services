openrc
touch /run/openrc/softlevel
rc-update add mariadb default

/etc/init.d/mariadb setup
chown -R mysql:mysql /var/lib/mysql
chmod -R 777 /var/lib/mysql
# echo '[mysqld]' >> /etc/my.cnf
# echo 'skip-networking=0' >> /etc/my.cnf
# echo 'skip-bind-address' >> /etc/my.cnf

rc-service mariadb restart

mysql -u root < /etc/config.sql
sleep infinity && wait