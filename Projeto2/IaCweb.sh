#!bin/bash

echo "Atualizando o Sevidor..."

apt-get update -y && apt-get upgrade -y

apt-get install apache2
apt-get install unzip


echo "Baixando e copiando os arquivos da Aplicação..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp

cd /tmp/linux-site-dio-main
cp -R * /var/www/html

systemctl start apache2