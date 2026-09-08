#!/usr/bin/env bash

lxc stop --all
lxd shutdown
snap remove --purge lxd
