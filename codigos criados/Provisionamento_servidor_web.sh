#! /bin/bash

echo "Iniciado da atualização do Ubunto"

apt update -y

apt upgrade -y

echo "fim da da atualização do Ubunto"

echo "Iniciado instalação do apache2"

apt install apache2 -y

echo "Fim instalação do apache2"

echo "Iniciado instalação do unzip"

apt install unzip -y

echo "Fim criação dos grupos unzip"

echo "Iniciado download da api"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Fim download da api"

echo "Iniciado dezipar e copia para a pasta /var/www/html/"

unzip main.zip

cd /tmp/linux-site-dio-main/

cp -R * /var/www/html/

echo "Fim dezipar e copia para a pasta /var/www/html/"


