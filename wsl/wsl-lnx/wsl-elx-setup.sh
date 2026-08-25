#!/usr/bin/env bash
# wsl-elx-setup.sh

apt-get update
apt-get upgrade
apt-get install emacs vim
mandb
mkdir -p lang/{assembly,awk,bash,elisp,perl,vimscript}
