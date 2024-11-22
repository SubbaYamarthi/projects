#!/bin/bash

# Define image name and tag
IMAGE_NAME="nginx-azure-demo"
TAG="v1"

# Run Docker container
echo "Running the Docker container..."
docker run -d -p 8080:80 --name nginx-container ${IMAGE_NAME}:${TAG}

echo "Docker container is running at http://localhost:8080"
