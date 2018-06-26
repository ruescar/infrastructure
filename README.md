# Infrastructure

This repository contains the scripts to setup a local Software Development environment using Jenkins and Gitlab.
Both applications run as Docker containers.

## Prerequisites

- Docker Community Edition
- Java

## Installation procedure

Create docker network for both containers to communicate with each other
    
    docker network create infrastructure-net
    
Start Gitlab docker container
    
    ./gitlab-startup.sh
      
Start Jenkins docker container
    
    ./jenkins-startup.sh
    
Connect the local host machine as a Jenkins agent to run builds on it     

    ./connect-local-agent.sh   
    
## Usage

Gitlab

    http://localhost:30080    
    
Jenkins

    http://localhost:8081
