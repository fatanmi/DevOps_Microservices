#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
docker build --tag myflaskapp -f ./Dockerfile .
# Step 1:
# Build image and add a descriptive tag

# Step 2: 
# List docker images
docker ps
# Step 3: 
# Run flask app
docker run  -p 8000:80  myflaskapp

