#!/bin/bash

set -euf -o pipefail

IMAGE_NAME="myimage"
DATE_TAG=${DATE_TAG:-"$(date -I)"}
TAG="mytag"

echo "Image tags:"
echo "  - ${IMAGE_NAME}:${DATE_TAG}"
echo "  - ${IMAGE_NAME}:${TAG}"
echo "  - ${IMAGE_NAME}:latest"

DOCKER_BUILDKIT=0 docker build \
  -t ${IMAGE_NAME}:${DATE_TAG} \
  -t ${IMAGE_NAME}:${TAG} \
  -t ${IMAGE_NAME}:latest \
  .
