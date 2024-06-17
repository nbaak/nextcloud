#!/bin/bash

openssl req -new -newkey rsa:4096 -days 3650 -nodes -keyout nextcloud.crt -out nextcloud.csr
