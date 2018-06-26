#!/usr/bin/env bash

docker run \
  -u root \
  --rm \
  -d \
  --name jenkins \
  --network infrastructure-net \
  -p 8081:8080 \
  -p 50000:50000 \
  -v $HOME/my-docker-volumes/jenkins-data:/var/jenkins_home:rw \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins/jenkins:2.121.1