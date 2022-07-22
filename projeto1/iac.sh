#criando o ambiente de trabalho

#!/bin/bash

a=('guest1', 'guest2', 'guest3')
v=('guest4', 'guest5', 'guest6')
s=('guest7', 'guest8', 'guest9')

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios..."

for n in ${a[@]};
do
useradd $n -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
done

for n in ${v[@]};
do
useradd $n -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
done

for n in ${s[@]};
do
useradd $n -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
done

echo "Atribuindo permissões aos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Ambiente criado com sucesso!"