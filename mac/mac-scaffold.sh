#!/bin/zsh

# macOS Scaffolding Script - Prepare Environment for Programming and Scripting
echo "Creating 'lang' scaffolding in user's homedir..."
sleep 10;

mkdir ~/lang
LANGPATH=~/lang

echo;
if [ -e /usr/bin/gawk ]
then
    echo "GNU Awk found! Creating awk folder!"
    mkdir $LANGPATH/awk
    echo;
else
    echo;
fi

if [ -e /usr/bin/bc ]
then
    echo "Basic Calculator found! Creating bc folder!"
    mkdir $LANGPATH/bc
    echo;
else
    echo;
fi

if [ -e /usr/sbin/dtrace ]
then
    echo "DTrace found! Creating dtrace folder!"
    mkdir $LANGPATH/dtrace
    echo;
else
    echo;
fi

if [ -e /usr/bin/ruby ]
then
    echo "Ruby found! Creating ruby folder!"
    mkdir $LANGPATH/ruby
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

if [ -e /usr/bin/tclsh ]
then
    echo "Tcl found! Creating tclsh folder!"
    mkdir $LANGPATH/tcl
    echo;
else
    echo;
fi

if [ -e /usr/bin/zsh ]
then
    echo "zsh found! Creating zsh folder!"
    mkdir $LANGPATH/zsh
    echo;
else
    echo;
fi
