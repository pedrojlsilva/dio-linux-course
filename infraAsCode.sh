#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "Criando diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Fim da criacao de diretorios"

echo "Criando grupos"

groupadd -f GRP_ADM
groupadd -f GRP_VEN
groupadd -f GRP_SEC

echo "Fim da criacao de grupos"

echo "Criando Usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Fim da criacao de usuarios"

echo "Especificando donos das pastas"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Especificando acessos"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
