#!/bin/zsh

# macOS Scaffolding Script - Prepare Environment for Programming and Scripting
# Between BSD and macOS, the apple doesn't fall far from the tree

echo "Creating 'lang' scaffolding in user's homedir..."
sleep 10;

mkdir ~/lang
LANGPATH=~/lang

# Creating folder as default as you can write AppleScript with the native "Script Editor" application
mkdir $LANGPATH/applescript

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

# Creating this absolute path as you can write JavaScript with the native "Script Editor" application
mkdir $LANGPATH/javascript

if [ -e /bin/launchctl ]
then
    echo "Launchctl found! Creating launchctl folder!"
    mkdir $LANGPATH/launchctl
    echo;
else
    echo;
fi

# Creating this particular path to help with pre-saved searches in the .savedSearch format
mkdir $LANGPATH/MetadataQuerySyntax

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

# Creating this absolute path for creating and staging Property Lists (.plists) for use with launchd
mkdir $LANGPATH/plist

if [ -e /usr/bin/tclsh ]
then
    echo "Tcl found! Creating tclsh folder!"
    mkdir $LANGPATH/tcl
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

if [ -e /usr/bin/zsh ]
then
    echo "zsh found! Creating zsh folder!"
    mkdir $LANGPATH/zsh
    echo;
else
    echo;
fi
