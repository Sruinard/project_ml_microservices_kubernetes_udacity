#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=sruinard/udacity_project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath project4-deployment --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward project4-deployment-6bfc67899f-t4l5x 8080:80
