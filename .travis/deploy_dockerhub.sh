#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS

docker build -t "simplewebapp:latest" .

docker tag "simplewebapp" "t0nydocker/simplewebapp:latest"

docker push "t0nydocker/simplewebapp:latest"