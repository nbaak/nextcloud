#!/bin/bash

openssl req -trustout -x509 -newkey rsa:4096 -days 3650 -nodes -keyout nextcloud.crt -out nextcloud.csr
