#!/bin/bash

echo "Введите домен(ы) через пробел"
read D

for cert in $D
do
mkdir $cert
cd $cert
openssl req -x509 -out $cert.crt -keyout $cert.key \
  -newkey rsa:2048 -days 3650 -nodes -sha256 \
  -subj '/CN=$D' -extensions EXT -config <( \
   printf "[dn]\nCN=$cert\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:$cert\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
cd ..
done