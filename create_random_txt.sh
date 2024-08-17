#! /bin/bash
# Make a file and push it to trigger github actions
RANDOM_NUMBER=$(date +%s%N) # Using timestamp with nanoseconds for random number

echo "Triggering Github Actions with random number $RANDOM_NUMBER" > trigger.txt
git add trigger.txt
git commit -m "all: Trigger Github Actions with random number $RANDOM_NUMBER"
git push origin master