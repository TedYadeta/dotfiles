#!/usr/bin/env bash
# wsl-ubu-setup.sh

apt update -y
apt upgrade -y
apt install emacs
mandb
mkdir -p lang/{awk,assembly,bash,bc,elisp,git,perl,python,sed,vimscript}
