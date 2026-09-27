#!/usr/bin/env bash

if [ $UID -ne 0 ]
then
  echo "Warning! Need root to run."
  exit
else
  podman pull docker.io/library/httpd:latest
  podman pull docker.io/library/nginx:latest
  podman pull docker.io/gitea/gitea:latest
  podman pull docker.io/library/vault:latest
fi
