#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
NAME="simplewebapp:latest"
docker build -f Dockerfile -t $NAME .
docker tag "simplewebapp" $DOCKER_USER:$NAME
docker push $DOCKER_USER:$NAME