#!/bin/bash
source .env
docker-compose up -d && docker-compose ps
