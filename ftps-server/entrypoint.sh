#!/bin/sh

#création d'un groupe
addgroup -S testgroup
#création d'un system user, ajout au groupe, assignation du répertoire
adduser -S testuser -G testgroup -h /data/www
#changement du mot de passe
echo "testuser:testpwd" | chpasswd

#lancement du serveur
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf