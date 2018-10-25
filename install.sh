#!/bin/bash
./build.sh
sleep 10
source .env
docker exec $CONTAINER_NAME_WEB bash -c 'mkdir drupal && cd drupal && composer create-project drupal-composer/drupal-project:8.x-dev /var/www/html/drupal --stability dev --no-interaction'
docker exec $CONTAINER_NAME_WEB bash -c 'drush site-install --db-url=mysql://root:password@db/db_name -y'