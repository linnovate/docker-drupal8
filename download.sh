#!/bin/bash
./build.sh
sleep 10
source .env
docker exec $CONTAINER_NAME_WEB bash -c 'rm -rf /var/www/html/web && composer create-project drupal-composer/drupal-project:8.x-dev /var/www/html --stability dev --no-interaction'
docker exec $CONTAINER_NAME_WEB bash -c 'drush site-install --db-url=mysql://root:newstart@mysql/db_name