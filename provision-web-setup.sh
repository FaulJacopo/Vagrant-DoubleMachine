#!/bin/bash

apt-get install apache2 -y
apt-get install php -y
apt-get install php-mysql -y

apt-get install php-fpm php-curl libapache2-mod-php php-cli php-gd -y

a2enconf php*-fpm
a2enmod php*

apt-get install adminer -y

systemctl restart apache2

