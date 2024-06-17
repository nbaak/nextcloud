#!/bin/bash

docker compose exec --user www-data nextcloud php occ db:add-missing-indices
