CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'newuser'@'%' IDENTIFIED BY 'password';
CREATE DATABASE db_wordpress;
GRANT ALL PRIVILEGES ON *.* TO 'newuser'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'newuser'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;            --access from outside
