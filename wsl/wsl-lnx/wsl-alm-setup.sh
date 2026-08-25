#!/usr/bin/env bash
# wsl-alma-setup.sh

dnf update -y
dnf upgrade -y
dnf install emacs
mandb
mkdir -p lang/{awk,bash,c,cpp,elisp,perl,python,vimscript}
