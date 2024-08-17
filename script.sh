#! /bin/bash

# Run docker compose build and push to docker hub
docker compose build --no-cache
sleep 5
docker compose push

# Create and run containers
docker compose up -d