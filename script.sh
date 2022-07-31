#!/bin/bash

# Atualizando máquina
apt update
apt upgrade

apt install apache2
apt install unzip
apt install git

sudo rm -rvf /var/www/html/index.html

wget -O /tmp/site/linux-site-dio-main.zip https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip /tmp/site/linux-site-dio-main.zip -d /tmp/site/
sudo cp -R /tmp/site/linux-site-dio-main/* /var/www/html/

systemctl enable apache2 
systemctl start apache2 
systemctl status apache2 
