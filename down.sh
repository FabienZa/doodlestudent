#!/bin/bash
cd front
docker compose down
cd ../api
docker compose down
cd ../mail
docker compose down
cd ../db
docker compose down
cd ../etherpad
docker compose down
cd ../traefik
docker compose down