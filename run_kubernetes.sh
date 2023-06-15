#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=caohoaiphuong/ml-sklearn:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl get nodes
kubectl create deploy ml-sklearn --image=$dockerpath

# Step 3:
# List kubernetes pod
kubectl get pods
export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: pod/$POD_NAME

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/$POD_NAME --address 0.0.0.0 8000:80