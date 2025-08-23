#!/bin/bash

# Linux Scaffolding Script - Prepare environment for Programming and Scripting
echo "Creating 'lang' scaffolding in user's homedir..."
sleep 10;

mkdir ~/lang
LANGPATH=~/lang

echo;
if [ -e /usr/bin/as ]
then
    echo "GNU Assembler found! Creating assembly folder!"
    mkdir $LANGPATH/assembly
    echo;
else
    echo;
fi

if [ -e /usr/bin/awk ]
then
    echo "Awk found! Creating awk folder!"
    mkdir $LANGPATH/awk
    echo;
else
    echo;
fi

if [ -e /usr/bin/bash ]
then
    echo "GNU Bash found! Creating bash folder!"
    mkdir $LANGPATH/bash
    echo;
else
    echo;
fi

if [ -e /usr/bin/bc ]
then
    echo "BC (Basic Calculator) found! Creating bc folder!"
    mkdir $LANGPATH/bc
    echo;
else
    echo;
fi

if [ -e /usr/bin/gcc ]
then
    echo "GNU C Compiler found! Creating C folder!"
    mkdir $LANGPATH/c
    echo;
else
    echo;
fi

if [ -e /usr/bin/g++ ]
then
    echo "GNU C++ Compiler found! Creating C++ folder!"
    mkdir $LANGPATH/cpp
    echo;
else
    echo;
fi

if [ -e /usr/bin/dot ]
then
    echo "Dot Graphing Language found! Creating dot folder!"
    mkdir $LANGPATH/dot
    echo;
else
    echo;
fi

# DRACUT HERE

if [ -e /usr/bin/emacs ]
then
    echo "Emacs found! Creating elisp folder!"
    mkdir $LANGPATH/elisp
    echo;
else
    echo;
fi

if [ -e /usr/bin/gfortran ]
then
    echo "GCC gfortran Compiler found! Creating fortran folder!"
    mkdir $LANGPATH/fortran
    echo;
else
    echo;
fi

if [ -e /usr/bin/git ]
then
    echo "Git found! Creating git folder!"
    mkdir $LANGPATH/git
    echo;
else
    echo;
fi

if [ -e /usr/bin/gvpr ]
then
    echo "GVPR found! Creating gvpr folder!"
    mkdir $LANGPATH/gvpr
    echo;
else
    echo;
fi

if [ -e /usr/bin/gjs ]
then
    echo "GJS found! Creating javascript folder!":
    mkdir $LANGPATH/gjs
    echo;
else
    echo;
fi

if [ -e /usr/bin/jq ]
then
    echo "jq found! Creating JSON folder!"
    mkdir $LANGPATH/jq
    echo;
else
    echo;
fi

if [ -e /usr/bin/lua ]
then
    echo "Lua found! Creating lua folder!"
    mkdir $LANGPATH/lua
    echo;
else
    echo;
fi

if [ -e /usr/bin/m4 ]
then
    echo "m4 found! Creating m4 folder!"
    mkdir $LANGPATH/m4
    echo;
else
    echo;
fi

if [ -e /usr/bin/magick-script ]
then
    echo "Magick found! Creating magick folder!"
    mkdir $LANGPATH/magick
    echo;
else
    echo;
fi


if [ -e /usr/bin/make ]
then
    echo "GNU Make found! Creating make folder!"
    mkdir $LANGPATH/make
    echo;
else
    echo;
fi

if [ -e /usr/bin/perl ]
then
    echo "Perl found! Creating perl folder!"
    mkdir $LANGPATH/perl
    echo;
else
    echo;
fi

if [ -e /usr/bin/ghostscript ]
then
    echo "Ghostscript found! Creating postscript folder!"
    mkdir $LANGPATH/postscript
    echo;
else
    echo;
fi

if [ -e /usr/bin/python3 ]
then
    echo "Python found! Creating python folder!"
    mkdir $LANGPATH/python
    echo;
else
    echo;
fi


if [ -e /usr/bin/guile3.0 ]
then
    echo "GNU Guile found! Creating scheme folder!"
    mkdir $LANGPATH/scheme
    echo;
else
    echo;
fi

if [ -e /usr/bin/sed ]
then
    echo "Sed found! Creating sed folder!"
    mkdir $LANGPATH/sed
    echo;
else
    echo;
fi

if [ -e /usr/bin/stap ]
then
    echo "Systemtap found! Creating systemtap folder!"
    mkdir $LANGPATH/systemtap
    echo;
else
    echo;
fi

if [ -e /usr/bin/tclsh ]
then
    echo "tclsh found! Creating tcl folder!"
    mkdir $LANGPATH/tcl
    echo;
else
    echo;
fi

if [ -e /usr/bin/tex ]
then
    echo "TeX found! Creating TeX folder!"
    mkdir $LANGPATH/TeX
    echo;
else
    echo;
fi



if [ -e /usr/bin/vim ]
then
    echo "Vim found! Creating vimscript folder!"
    mkdir $LANGPATH/vimscript
    echo;
else
    echo;
fi

echo "Lang environment created!"
