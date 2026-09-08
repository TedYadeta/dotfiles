#!/usr/bin/env bash
# lxc-rhe-fam-setup - For setting up lab environments for Linux distros in the Redhat family

snap install lxd
lxd init --auto
lxd waitready
lxc init images:almalinux/9/amd64 $alm_hn
lxc init images:fedora/44/amd64 $fed_hn
lxc init images:rockylinux/9/default $roc_hn
echo "LXC Redhat Family Lab initialized."
echo "AlmaLinux, Fedora and Rocky ready."
lxc list
