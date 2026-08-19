# wsl-deb-setup.sh - For Debian on WSL2 setups
# Run me as sudo, please!

#!/usr/bin/bash
apt update
apt upgrade
apt install git manpages man-db
man-db
mkdir -p lang/{awk,bash,perl}
