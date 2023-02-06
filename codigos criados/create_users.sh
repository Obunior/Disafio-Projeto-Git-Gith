#! /bin/bash

echo "Iniciado criação dos diretorios padrões"

mkdir /pulico
echo "Diretório Público criado"

mkdir /adm
echo "Diretório Adm criado"

mkdir /ven
echo "Diretório Ven criado"

mkdir /sec
echo "Diretório Sec criado"

echo "fim da criação dos diretorios padrões"

echo "Iniciado criação dos grupos padrões"

groupadd GRP_ADM
echo "Grupo GRP_ADM criado"

groupadd GRP_VEM
echo "Grupo GRP_VEM criado"

groupadd GRP_SEC
echo "Grupo GRP_SEC criado"

echo "Fim criação dos grupos padrões"

echo "Iniciado criação de Usuários/Grupos padrões"

useradd maria -c "Maria da Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário Maria criado"
passwd carlos -e


useradd calos -c "Carlos da Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário DBA criado"
passwd carlos -e

useradd joao -c "Joao da Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário Joao criado"
passwd joao -e

useradd debora -c "Debora Nacimento" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEM
echo "Usuário Debora criado"
passwd debora -e

useradd sebastiana -c "Sebastiana Nacimento" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEM
echo "Usuário Sebastiana criado"
passwd sebastiana -e

useradd roberto -c "Roberto Nacimento" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEM
echo "Usuário Roberto criado"
passwd roberto -e

useradd josefina -c "Josefina Pereira" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Josefina criado"
passwd josefina -e

useradd amanda -c "Amanda Pereira" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Josefina criado"
passwd amanda -e

useradd rogerio -c "Rogerio Pereira" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Rogerio criado"
passwd rogerio -e

echo "Fim da criação de Usuários"

echo "Inicio alteração dos dodos dos diretorios"
chown root:root /pulic
chown root:GRP_ADM /adm
chown root:GRP_VEM /ven
chown root:GRP_SEC /sec

echo "Inicio alteração dos dodos dos diretorios"


echo "Inicio alteração permições dos diretorios"

chmod 777 /pulico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim alteração permições dos diretorios"
