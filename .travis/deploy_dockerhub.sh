#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
TAG="latest"
NAME=$TRAVIS_REPO_SLUG | tr '[:upper:]' '[:lower:]'
docker build -f Dockerfile -t $NAME:$TAG .
docker push $TRAVIS_REPO_SLUG