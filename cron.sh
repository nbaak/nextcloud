#!/bin/bash

THIS_DIR=$(dirname $(readlink -f $0))

pushd ${THIS_DIR}

docker-compose exec -u www-data nextcloud php -f cron.php > last_cronjob

popd
