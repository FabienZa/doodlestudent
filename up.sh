#!/bin/bash
cd traefik
 docker compose up -d
 ## sleep in bash for loop ##
for i in {1..3}
do
  echo "Sleeping some seconds because server is too slow..."
  sleep 2s
done
cd ../etherpad
 docker compose up -d
 for i in {1..3}
do
  echo "Sleeping some seconds because server is too slow..."
  sleep 2s
done
cd ../db
docker compose up -d
for i in {1..3}
do
  echo "Sleeping some seconds because server is too slow..."
  sleep 2s
done
cd ../mail
docker compose up -d
for i in {1..3}
do
  echo "Sleeping some seconds because server is too slow..."
  sleep 2s
done
cd ../api
docker compose up -d
for i in {1..3}
do
  echo "Sleeping some seconds because server is too slow..."
  sleep 2s
done
cd ../front
docker compose up -d
