#!/bin/bash
cd front
docker compose build
cd ../api
docker compose build
cd ../mail
docker compose build
cd ../db
docker compose build
cd ../etherpad
docker compose build
cd ../traefik
docker compose build