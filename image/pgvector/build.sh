#!/bin/bash

DATE_TIME=$(date +'%Y%m%d')
export DATE_TIME

echo "Building pgvector image with tag: $DATE_TIME"

# docker buildx rm multiarch 2>/dev/null || true ## cache will be lost

docker buildx create --name multiarch --driver docker-container --use || true

docker buildx build --platform linux/amd64,linux/arm64 -t "loneexile/pgvector:${DATE_TIME}" -f Dockerfile --push .
