#!/usr/bin/env bash
# This deploys the image in the Docker Hub with Kubernetes

# run command "minikube start" first

# Step 1:
# This is your Docker ID/path
TAG=udacity-boston-housing
DOCKERUSER=zhulingchen
DOCKERPATH=$DOCKERUSER/$TAG
LOCAL_PORT=8000
DOCKER_PORT=80

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $TAG --image=$DOCKERPATH
sleep 90s  # wait until kubernetes pods

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/$TAG ${LOCAL_PORT}:${DOCKER_PORT}