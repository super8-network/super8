#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-super8pay/super8d-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/super8d docker/bin/
cp $BUILD_DIR/src/super8-cli docker/bin/
cp $BUILD_DIR/src/super8-tx docker/bin/
strip docker/bin/super8d
strip docker/bin/super8-cli
strip docker/bin/super8-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
