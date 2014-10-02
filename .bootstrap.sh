#!/usr/bin/env bash

apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php5-5.6
apt-get update
# apt-get upgrade -y
apt-get install -y apache2 php5
rm -rf /var/www
ln -fs /vagrant /var/www
sed -i 's/\/var\/www\/html/\/var\/www/' /etc/apache2/sites-available/000-default.conf
apachectl restart
