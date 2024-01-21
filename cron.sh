#!/bin/bash

THIS_DIR=$(dirname $(readlink -f $0))

pushd ${THIS_DIR}

# docker-compose exec -u www-data nextcloud php cron.php > last_cronjob
docker exec -u www-data nextcloud_app php cron.php > last_cronjob

popd
