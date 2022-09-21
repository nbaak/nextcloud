#!/bin/bash

docker pull nextcloud
docker-compose down -v
docker-compose up -d
