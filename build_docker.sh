#!/bin/sh

CONTAINER_NAME=ros2_template_docker
CONTAINER_TAG=humble

docker build \
    --build-arg UID="$(id -u)" \
    --build-arg GID="$(id -g)" \
    -t ${CONTAINER_NAME}:${CONTAINER_TAG} \
    .

    # --no-cache \
    # --progress plain \
    # --build-arg CACHE_BUST="$(date +%s)" \