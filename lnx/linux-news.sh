#!/usr/bin/env bash

# Linux News Aggregator
# Small QoL script for myself to see what's going on in Linuxland
# Does require Firefox, which with exception to Arch, comes standard

if [ -e /usr/bin/firefox ]
then
    echo "Fetching news sites..."
else
    echo "Warning! Firefox is not found on this system! Aborting process!"
    exit $1
fi

firefox --new-window

firefox --new-tab " "
firefox --new-tab "https://www.archlinux.org"
firefox --new-tab "https://www.debian.org/News"
firefox --new-tab "https://discussion.fedoraproject.org/c/news/5"
firefox --new-tab "https://wiki.gentoo.org/wiki/Main_Page"
firefox --new-tab "https://news.opensuse.org"
