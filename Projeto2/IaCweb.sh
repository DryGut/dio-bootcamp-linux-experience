#!bin/bash

echo "Atualizando o Sevidor..."

apt-get update -y && apt-get upgrade -y

apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da Aplicação..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp

cd /tmp/linux-site-dio-main
cp -R * /var/www/html

systemctl enable apache2
systemctl start apache2
