#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
TAG=udacity-boston-housing
DOCKERUSER=zhulingchen
DOCKERPATH=$DOCKERUSER/$TAG
#IMAGEID=002f011e761b

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $DOCKERPATH"

# Step 3:
# Push image to a docker repository
docker login --username=$DOCKERUSER
docker tag $TAG $DOCKERPATH  # or docker tag $IMAGEID $DOCKERPATH
docker push $DOCKERPATH