#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker --version
docker build -t ml-sklearn:v1.0.0 .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -d -p 8000:80 ml-sklearn:v1.0.0