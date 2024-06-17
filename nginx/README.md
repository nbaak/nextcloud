# Nginx Config
Create SSL certificates and install certs and nextcloud config.

## Create SSL Cert
If you run a cloud in your lan it is still recommended to use an ssl certificate to encrypt your trafic.

To create an ssl certificate we use openssl. The Script `create-ssl-certificates.sh` will create you a nextcloud.crt and a nextcloud.csr.

```bash
./create-ssl-certificates.sh 
```

## Install Config
To install the config use the install.sh script.

For example:  

```bash
./install.sh "nextcloud nextcloud.lan"
```

The script will set nextcloud and nextcloud.lan as server in the nginx config file for nextcloud.

If SSL Certs exists the script will also copy the cert files to nginx/ssl. The script will link the cert and the key in the nextcloud.conf.

## OpenSSL
If you want to use the cloud with an letsencrypt cert, you skip step 1 Create SSL Cert and create your own ssl certificate after installing the config (without ssl) and then use certbot.