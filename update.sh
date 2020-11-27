#!/bin/bash

docker pull nextcloud
docker-compose stop
docker-compose rm nextcloud
docker-compose up -d
