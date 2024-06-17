#!/bin/bash

SERVER_NAMES=$1

cp nextcloud.conf /etc/nginx/sites-available

if [ -f *.crt ] && [ -f *.csr ]; then

mkdir -p /etc/nginx/ssl
cp *.crt /etc/nginx/ssl/
cp *.csr /etc/nginx/ssl/

sed -i 's/#SSLCert/#SSLCERT\n      listen 443 ssl;\n      ssl_certificate \/etc\/nginx\/ssl\/nextcloud.crt;\n      ssl_certificate_key \/etc\/nginx\/ssl\/nextcloud.csr;/' /etc/nginx/sites-available/nextcloud.conf

sed -i 's/#SSLRedirect/server {\n    server_name #SERVER_NAMES;\n    listen 80;\n    return 301 https:\/\/$host$request_uri;\n}/' /etc/nginx/sites-available/nextcloud.conf

sed -i "s/#SERVER_NAMES/$SERVER_NAMES/g" /etc/nginx/sites-available/nextcloud.conf

else
    echo "no keys found"
fi
