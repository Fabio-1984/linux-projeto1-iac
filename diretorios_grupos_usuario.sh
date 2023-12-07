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

useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -c "João Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd debora -c "Debora Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd josefina -c "Josefina Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "Adicionando usuários aos grupos..."

adduser joao GRP_ADM
adduser debora GRP_VEN
adduser sebastiana GRP_VEN
adduser roberto GRP_VEN
adduser josefina GRP_SEC
adduser amanda GRP_SEC
adduser rogerio GRP_SEC

echo "Especificando permissões dos diretórios..."

chgrp GRP_ADM adm
chgrp GRP_VEN ven
chgrp GRP_SEC sec

chmod 777 /publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Fim..."
