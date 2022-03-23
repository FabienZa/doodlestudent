#!/bin/bash
cd traefik
 docker compose up -d
cd ../etherpad
 docker compose up -d
cd ../db
docker compose up -d
cd ../mail
docker compose up -d
cd ../api
docker compose up -d
cd ../front
docker compose up -d