#!/bin/bash

THIS_DIR=$(dirname $(readlink -f $0))

pushd ${THIS_DIR}

curl -k http://localhost:8081/cron.php > last_web_cronjob

popd
