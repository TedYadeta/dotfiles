#!/bin/bash
# Warning: Experimental; Not Tested in Appropriate Environment
# I know there's a cleaner way of doing this, but I just wanted to quickly throw this out now.
echo "Azure Linux System Information:"
echo "========================="

osname=$(cat /etc/os-release | grep "PRETTY NAME")
echo "OS:"
echo $osname
echo;

echo "Bash:"
bash --version
echo;

echo "Python:"
python3 --version
echo;

echo "Perl:"
perl --version
echo;
