#!/bin/tcsh

# *BSD Scaffolding Script - Prepare Environment for Programming and Scripting
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

if [ -e /usr/bin/c99 ]
    echo "C99 Compiler found! Creating c99 folder!"
    mkdir $LANGPATH/c99
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

if [ -e /usr/sbin/iasl ]
then
    echo "Intel ACPI Source Language compiler found! Creating iasl folder!"
    mkdir $LANGPATH/iasl
    echo;
else
    echo;
fi

if [ -e /usr/bin/m4 ]
then
    echo "m4 macro language found! Creating m4 folder!"
    mkdir $LANGPATH/m4
    echo;
else
    echo;
fi

if [ -e /usr/bin/tcsh ]
then
    echo "tcsh found! Creating tcsh folder!"
    mkdir $LANGPATH/tcsh
    echo;
else
    echo;
fi
