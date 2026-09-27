#!/usr/bin/env bash

if [ $UID -ne 0 ]
then
  echo "Warning! Need root to run."
  exit
else
  podman pull docker.io/library/alpine:latest
  podman pull docker.io/library/centos:latest
  podman pull docker.io/library/debian:latest
  podman pull docker.io/library/ubuntu:latest
fi
