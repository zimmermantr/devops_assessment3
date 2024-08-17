#! /bin/bash

# Run docker compose build and push to docker hub
docker compose build --no-cache
sleep 5
docker compose push

# Create and run containers
docker compose up -d

# Make a file and push it to trigger github actions
RANDOM_NUMBER=$(date +%s%N) # Using timestamp with nanoseconds for random number

echo "Triggering Github Actions with random number $RANDOM_NUMBER" > trigger.txt
git add trigger.txt
git commit -m "all: Trigger Github Actions with random number $RANDOM_NUMBER"
git push origin master