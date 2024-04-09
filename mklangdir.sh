#!/bin/bash

USER=`whoami`

# First, make the directory in their home folder.

# cd/home/$USER
mkdir lang
cd lang

# Second, make two directories for Emacs and Vim (elisp & vimscript), and them symlink later

if [ -e /usr/bin/emacs ];
then
  echo "GNU Emacs found!"
  emacs --version | head -n 1
  mkdir elisp
  echo "Emacs Lisp (elisp) folder created!"
  sleep 5;
else
  echo "GNU Emacs is not installed."
fi

if [ -e /usr/bin/vim ];
then
  mkdir vimscript
  echo "Vimscript folder created!"
else
  echo "Vim is not installed."
fi

# Next, as this is running on Unix/Linux systems, we need to check if certain languages are already installed.

# We'll start with what you would need to build the Linux Kernel, so not just C, but Python, and even Rust if need be, as well as M4, and what not.
# Checking this via https://github.com/torvalds/linux

if [ -e /usr/bin/as ];
then
  mkdir assembly
  echo "Assembly folder created!"
else
  echo "GNU AS is not installed."
fi

if [ -e /usr/bin/awk ];
then
  mkdir awk
  echo "AWK folder created!"
else
  echo "AWK is not installed."
fi

if [ -e /usr/bin/bash ];
then
  mkdir bash
  echo "Bash folder created!"
else
  echo "GNU Bash is not installed."
fi

if [ -e /usr/bin/gcc ];
then
  mkdir c
  echo "C folder created!"
else
  echo "gcc is not installed."
fi

if [ -e /usr/bin/g++ ];
then
  mkdir cpp
  echo "C Plus Plus (cpp) folder created!"
else
  echo "g++ is not installed"
fi

if [ -e /usr/bin/git ];
then
  mkdir git
  echo "Git folder created!"
else
  echo "Git is not installed."
fi

if [ -e /usr/bin/m4 ];
then
  mkdir m4
  echo "m4 folder created!"
else
  echo "GNU m4 is not installed."
fi

if [ -e /usr/bin/make ];
then
  mkdir make
  echo "Make folder created!"
else
  echo "GNU Make is not installed"
fi

if [ -e /usr/bin/perl ];
then
  mkdir perl
  echo "Perl folder created!"
else
  echo "Perl is not installed."
fi

if [ -e /usr/bin/python3 ];
then
  mkdir python
  echo "Python (python3) folder created!"
else
  echo "Python3 is not installed."
fi

# Next, we get whatever is left over. Some distributions come with TCL, via tclsh, or Lua or even Ruby

if [ -e /usr/bin/ghostscript ]
then
  mkdir ghostscript
  echo "PostScript folder created!"
else
  echo "Ghostscript is not installed."
fi

if [ -e /usr/bin/jq ]
then
  mkdir json
  echo "JSON folder created!"
else
  echo "jq is not installed."
fi

if [ -e /usr/bin/lua ];
then
  mkdir lua
  echo "Lua folder created!"
else
  echo "Lua is not installed."
fi

if [ -e /usr/bin/octave ]
then
  mkdir octave
  echo "Octave folder created!"
else
  echo "GNU Octave is not installed."
fi

if [ -e /usr/bin/ruby ];
then
  mkdir ruby
  echo "Ruby folder created!"
else
  echo "Ruby is not installed."
fi

if [ -e /usr/bin/sqlite3 ];
then
  mkdir sql
  echo "SQL folder created!"
else
  echo "sqlite3 is not installed."
fi

if [ -e /usr/bin/tclsh ];
then
  mkdir tcl
  echo "TCL folder created!"
else
  echo "tclsh is not installed."
fi

if [ -e /usr/bin/xmllint ];
then
  mkdir xml
  echo "XML folder created!"
else
  echo "xmllint is not installed."
fi

# Notes on what I've found on testing different distros:
# Fedora 39 - Comes with Assembly, AWK, Bash, GhostScript, Git, jq, lua, perl, python, sql, tcl and xml by default
# Debian 12 - Comes with Assembly, AWK, Bash, gcc, ghostscript, g++, jq, make, perl, python
