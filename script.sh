#! /bin/bash

# Run docker compose build and push to docker hub
docker compose build --no-cache
sleep 5
# Create and run containers
docker compose up -d
sleep 30
# Make a file and push it to trigger github actions

chmod +x create_random_txt.sh
./create_random_txt.sh
