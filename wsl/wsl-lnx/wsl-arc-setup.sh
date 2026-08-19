# wsl-arc-setup.sh - For Arch Linux on WSL2 setups

#!usr/bin/bash

pacman -Syu
pacman -Sy nano vim
echo 'en_US.UTF.8' > /etc/locale.conf
echo "You need to uncomment 'en_US.UTF.8' in /etc/locale-gen!"
sleep 10
vim /etc/locale.gen
locale-gen
pacman -Sy git man-db
mandb
mkdir -p lang/{asn1,assembly,awk,bash,c,cpp,git,perl}
