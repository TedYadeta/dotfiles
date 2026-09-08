#!/usr/bin/env bash
# LXC Master Lab - For widespread testing

snap install lxd
lxd init --auto
lxd waitready
lxc init images:almalinux/9/amd64 $alm_hn
lxc init images:alpine/3.24/default $alp_hn
lxc init images:archlinux/current/default $arc_hn
lxc init images:busybox/1.36.1/default $bsy_hn
lxc init images:debian/trixie/amd64 $deb_hn
lxc init images:devuan/excalibur/amd64 $dev_hn
lxc init images:fedora/44/amd64 $fed_hn
lxc init images:gentoo/current/systemd $gen_hn
lxc init images:mint/zena/amd64 $min_hn
lxc init images:opensuse/16.0/default $sus_hn
lxc init images:rockylinux/9/default $roc_hn
lxc init images:ubuntu/resolute/desktop $ubu_hn --vm
lxc list
