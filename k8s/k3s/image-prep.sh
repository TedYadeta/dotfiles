#!/usr/bin/env bash

mkdir /var/lib/rancher/k3s/agents/images

cat > /var/lib/rancher/k3s/agents/images/preimports.txt << "EOF"

docker.io/hashicorp/vault:latest
docker.io/library/arch:latest
docker.io/library/debian:latest
docker.io/library/fedora:latest
docker.io/library/nginx:latest
EOF
