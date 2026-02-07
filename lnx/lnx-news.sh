#!/usr/bin/env bash

# Linux News Aggregator
# Small QoL script for myself to see what's going on in Linuxland
# Does require Firefox, which with exception to Arch, comes standard

if [ -e /usr/bin/firefox ]
then
    echo "Fetching news sites..."
else
    echo "Warning! Firefox is not found on this system!"
    echo "Please install Firefox to continue. Aborting process."
    exit $1
fi

archURL="https://www.archlinux.org"
debURL="https://debian.org/News"
fedURL="https://discussion.fedoraproject.org/c/news/5"
genURL="https://wiki.gentoo.org/wiki/Main_Page"
suseURL="https://news.opensuse.org"

declare -a lnxurls

lnxurls=($archURL $debURL $fedURL $genURL $suseURL)


firefox --new-window
for url in "${lnxurls[@]}"
do
    firefox --new-tab "$url"
done
