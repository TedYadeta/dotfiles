#!/usr/bin/env bash

# NOTE (26/09/19): Holy future refactor, Batman!

zypper install -y bash
zypper install -y binutils
zypper install -y bison
zypper install -y coreutils
zypper install -y diffutils
zypper install -y findutils
zypper install -y gawk
zypper install -y gcc
zypper install -y gcc-c++
zypper install -y grep
zypper install -y gzip
zypper install -y m4
zypper install -y make
zypper install -y patch
zypper install -y perl
zypper install -y python3
zypper install -y sed
zypper install -y tar
# Running texinfo with --no-recommends to prevent pulling 2000 packages
zypper install --no-recommends -y texinfo
zypper install -y xz
echo "openSUSE is now ready for LFS build."
