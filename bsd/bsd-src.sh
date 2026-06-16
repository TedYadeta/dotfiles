#!/usr/bin/env tcsh

mkdir -p ~/bsd-src/{free,open,net,drag}

git clone https://github.com/freebsd/freebsd-src ~/bsd-src/free

git clone https://github.com/openbsd/src ~/bsd-src/open

git clone https://github.com/NetBSD/src ~/bsd-src/net

git clone https://github.com/DragonFlyBSD/DragonFlyBSD ~/bsd-src/drag
