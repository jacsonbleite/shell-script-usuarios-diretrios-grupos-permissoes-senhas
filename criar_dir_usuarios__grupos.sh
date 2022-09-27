#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd josi -m -s /bin/bash -p $(openssl passwd -crypt S3nh@123) -G GRP_ADM
useradd gaby -m -s /bin/bash -p $(openssl passwd -crypt S3nh@123) -G GRP_ADM
useradd felipe -m -s /bin/bash -p $(openssl passwd -crypt S3nh@123) -G GRP_ADM

useradd miguel -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_VEN
useradd jose -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_VEN
useradd abacate -m -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_VEN

useradd barraquinha -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_SEC
useradd oncinha -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_SEC
useradd quati -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
