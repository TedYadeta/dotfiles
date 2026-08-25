#!/usr/bin/env bash
# wsl-fed-setup.sh

dnf update -y
dnf upgrade -y
dnf install -y emacs vim
mandb
mkdir -p lang/{bash,c,cpp,elisp,lua,python,sed,vimscript}
