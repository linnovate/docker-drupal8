#!/bin/bash
./build.sh
sleep 10
source .env
docker exec $CONTAINER_NAME_WEB bash -c 'drush site-install --db-url=mysql://root:password@db/db_name -y'

