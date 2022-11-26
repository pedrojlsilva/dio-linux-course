#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "Atualizando server"
apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando e copiando arquivos"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip
cd linux-site-dio
cp -R * /var/www/html

echo "fim"