#!/bin/bash
./build.sh
sleep 10
source .env
docker exec $CONTAINER_NAME_WEB bash -c 'export COMPOSER_ALLOW_SUPERUSER=1; composer install --no-dev'
docker exec $CONTAINER_NAME_WEB bash -c 'drush site-install --db-url=mysql://root:password@db/db_name -y'

docker exec $CONTAINER_NAME_WEB bash -c 'mkdir modules themes && chmod 777 ./modules ./themes -R'

