#!/bin/bash

apt-get install mysql-server -y

mysql -e "create user 'adminProva'@'10.10.20.10' identified by 'administrator'"
mysql -e "CREATE DATABASE Prova"
mysql -e "GRANT ALL ON Prova.* TO 'adminProva'@'10.10.20.10'"

sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf

systemctl restart mysql