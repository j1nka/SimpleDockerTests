#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
NAME="simplewebapp:latest"
docker build -f Dockerfile -t $NAME .
docker tag "simplewebapp" "t0nydocker/"$NAME
docker push "t0nydocker/"$NAME