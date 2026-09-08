#!/usr/bin/env bash
# lxc-misfit-lab-setup.sh - for setting up lab environments for Linux distros that are not part of any major family

snap install lxd
lxd init --auto
lxd waitready
lxc init images:alpine/3.24/default $alp_hn
lxc init images:archlinux/current/default $arc_hn
lxc init images:busybox/1.36.1/default $bsy_hn
lxc init images:gentoo/current/systemd $gen_hn
lxc init images:opensuse/16.0/default $sus_hn
echo "LXC Misfit Lab initialized."
echo "Alpine, Arch, Busybox, Gentoo and openSUSE ready."
lxc list
