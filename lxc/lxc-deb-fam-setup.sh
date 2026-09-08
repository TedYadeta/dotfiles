#!/usr/bin/env bash
# lxc-deb-fam-setup.sh - In which we quickly spin up lab environments for Linux distros in the Debian family

snap install lxd
lxd init --auto
lxd waitready
lxc init images:debian/trixie/amd64 $deb_hn
lxc init images:devuan/excalibur/amd64 $dev_hn
lxc init images:mint/zena/amd64 $min_hn
lxc init images:ubuntu/resolute/desktop $ubu_hn --vm
echo "LXC Debian Family Lab initialized."
echo "Debian, Devuan, Mint and Ubuntu ready."
lxc list
