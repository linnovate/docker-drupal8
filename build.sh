#!/bin/bash
source .env
docker-compose up -d && docker-compose ps
docker exec $CONTAINER_NAME_WEB bash -c 'composer install -o'

