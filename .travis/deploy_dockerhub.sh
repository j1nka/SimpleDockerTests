#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
TAG="latest"
NAME="simplewebapp"
docker build -f Dockerfile -t $NAME:$TAG .
docker push $NAME