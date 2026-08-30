#!/usr/bin/env bash

snap install lxd
lxd init --auto
lxd waitready
lxd init images:archlinux/amd64 $LXC_ARC_NAME
lxd init images:debian/trixie/amd64 $LXC_DEB_NAME
lxd init images:fedora/44/amd64 $LXC_FED_NAME
echo "Basic LXD Lab initialized."
echo "Arch, Debian and Fedora ready."
lxc list