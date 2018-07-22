#!/bin/bash
./build.sh
sleep 10
docker exec $CONTAINER_NAME_WEB bash -c 'rm -rf /var/www/html/* && composer create-project drupal-composer/drupal-project:8.x-dev /var/www/html --stability dev --no-interaction'
