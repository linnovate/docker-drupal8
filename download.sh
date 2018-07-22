#!/bin/bash
./build.sh
sleep 10
docker exec drupal-8-example-web bash -c 'rm -rf /var/www/html/* && composer create-project drupal-composer/drupal-project:8.x-dev /var/www/html --stability dev --no-interaction'
