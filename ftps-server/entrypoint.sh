#!/bin/sh

#création d'un groupe
addgroup -S testgroup
#création d'un system user, ajout au groupe, assignation du répertoire
adduser -S testuser -G testgroup -h /data/www

#changement du mot de passe
echo "testuser:testpwd" | chpasswd

# chmod -R 777 /data/www
# chown -R testuser:testuser /data/www

# # Set passive mode parameters:
# if [ "$PASV_ADDRESS" = "**IPv4**" ]; then
#     export PASV_ADDRESS=$(/sbin/ip route|awk '/default/ { print $3 }')
# fi

# echo "pasv_address=${PASV_ADDRESS}" >> /etc/vsftpd/vsftpd.conf
# echo "pasv_max_port=${PASV_MAX_PORT}" >> /etc/vsftpd/vsftpd.conf
# echo "pasv_min_port=${PASV_MIN_PORT}" >> /etc/vsftpd/vsftpd.conf
# echo "pasv_addr_resolve=${PASV_ADDR_RESOLVE}" >> /etc/vsftpd/vsftpd.conf
# echo "pasv_enable=${PASV_ENABLE}" >> /etc/vsftpd/vsftpd.conf
# echo "file_open_mode=${FILE_OPEN_MODE}" >> /etc/vsftpd/vsftpd.conf
# echo "local_umask=${LOCAL_UMASK}" >> /etc/vsftpd/vsftpd.conf
# echo "xferlog_std_format=${XFERLOG_STD_FORMAT}" >> /etc/vsftpd/vsftpd.conf
# echo "reverse_lookup_enable=${REVERSE_LOOKUP_ENABLE}" >> /etc/vsftpd/vsftpd.conf

#lancement du serveur
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf