  GNU nano 7.2                               setupcheck.sh                                        
#!/bin/bash

docker compose exec --user www-data nextcloud php occ setupchecks -vvv
