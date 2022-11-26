#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

rm -Rf /publico
rm -Rf /adm
rm -Rf /ven
rm -Rf /sec

userdel -r carlos 
userdel -r maria 
userdel -r joao 
userdel -r debora 
userdel -r sebastiana 
userdel -r roberto 
userdel -r josefina 
userdel -r amanda 
userdel -r rogerio 


groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC