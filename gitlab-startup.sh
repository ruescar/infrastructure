#!/usr/bin/env bash

docker run \
  -u root \
  --rm \
  -d \
  --name gitlab \
  --network infrastructure-net \
  --publish 30080:30080 \
  --publish 30022:22 \
  --env GITLAB_OMNIBUS_CONFIG="external_url 'http://localhost:30080'; gitlab_rails['gitlab_shell_ssh_port']=30022;" \
  -v $HOME/my-docker-volumes/gitlab-config:/etc/gitlab:rw \
  -v $HOME/my-docker-volumes/gitlab-logs:/var/log/gitlab:rw \
  -v $HOME/my-docker-volumes/gitlab-data:/var/opt/gitlab:rw \
  gitlab/gitlab-ce:9.1.0-ce.0

