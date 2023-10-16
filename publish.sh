#!/usr/bin/env bash

# This script will publish to rubygems and dockerhub

set -eux

DOCKERHUB_IMAGE="docker-intern.letsdev.de/devops/parse-a-changelog"

## Publish to Docker Hub
docker buildx create --use
docker buildx build --push --platform=linux/arm64,linux/amd64 --tag $DOCKERHUB_IMAGE:latest -f Dockerfile .
#docker push "${DOCKERHUB_IMAGE}:latest"
