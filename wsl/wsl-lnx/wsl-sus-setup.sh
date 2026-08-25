#!/usr/bin/env bash
# wsl-sus-setup.sh

zypper update
zypper install emacs nano
mkdir -p lang/{awk,bash,elisp,perk,python,vimscript}
