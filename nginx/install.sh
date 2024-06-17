#!/bin/bash

cp nextcloud.conf /etc/nginx/sites-available

if [ -f *.crt ] && [ -f *.csr ]; then

mkdir -p /etc/nginx/ssl
cp *.crt /etc/nginx/ssl/
cp *.csr /etc/nginx/ssl/

sed -i 's/#SSLCert/#SSLCERT\n      listen 443 ssl;\n      ssl_certificate \/etc\/nginx\/ssl\/nextcloud.crt;\n      ssl_certificate_key \/etc\/nginx\/ssl\/nextcloud.csr;/' /etc/nginx/sites-available/nextcloud.conf

else
    echo "no keys found"
fi
