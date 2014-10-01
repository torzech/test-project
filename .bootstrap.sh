#!/usr/bin/env bash

apt-get update
# apt-get upgrade -y
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www
sed -i 's/\/var\/www\/html/\/var\/www/' /etc/apache2/sites-available/000-default.conf
apachectl restart
