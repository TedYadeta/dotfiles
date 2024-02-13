#!/bin/bash

USER=`whoami`

# First, make the directory in their home folder.

# cd/home/$USER
mkdir lang
cd lang

# Second, make two directories for Emacs and Vim (elisp & vimscript), and them symlink later

if [ -e /usr/bin/emacs ]
then
  mkdir elisp
fi

if [ -e /usr/bin/vim ]
then
  mkdir vimscript
fi

# Next, as this is running on Unix/Linux systems, we need to check if certain languages are already installed.

# We'll start with what you would need to build the Linux Kernel, so not just C, but Python, and even Rust if need be, as well as M4, and what not.
# Checking this via https://github.com/torvalds/linux

if [ -e /usr/bin/as ];
then
  mkdir assembly
fi

if [ -e /usr/bin/bash ];
then
  mkdir bash
fi

if [ -e /usr/bin/gcc ];
then
  mkdir c
fi

if [ -e /usr/bin/g++ ];
then
  mkdir cpp
fi

if [ -e /usr/bin/git ];
then
  mkdir git
fi

if [ -e /usr/bin/m4 ];
then
  mkdir m4
fi

if [ -e /usr/bin/make ]
then
  mkdir make
fi

if [ -e /usr/bin/perl ]
then
  mkdir perl
fi

if [ -e /usr/bin/python3 ]
then
  mkdir python
fi

# Next, we get whatever is left over. Some distributions come with TCL, via tclsh, or Lua or even Ruby

if [ -e /usr/bin/lua ]
then
  mkdir lua
fi

if [ -e /usr/bin/ruby ]
then
  mkdir ruby
fi

if [ -e /usr/bin/tclsh ]
then
  mkdir tcl
fi
