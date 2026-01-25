#!/usr/bin/env bash

cat /proc/cpuinfo | grep "flags" | tr ' ' '\n' | grep -v "flags" > raw-flags.txt
cat raw-flags.txt | sort | uniq > data-flags.txt

echo "============================="
echo "======CPU Vexillologist======"
echo;

function fpu_flag() {
    echo "Flag: FPU"
    echo "Meaning: Onboard Floating Point Unit"
    echo "Definition: This CPU supports Floating-Point Math."
    echo;
}   

function vme_flag() {
    echo "Flag: VME"
    echo "Meaning: Virtual Mode Extensions"
    echo "Definition: Virtual 8086 Mode Extensions."
    echo;
}

function de_flag() {
    echo "Flag: DE"
    echo "Meaning: Debugging Extensions"
    echo "Definition: Supports specific debuggin features."
    echo;
}


if grep -q "fpu" "data-flags.txt"
then
    fpu_flag
else
    echo "File not found."
fi

if grep -q "vme" "data-flags.txt"
then
    vme_flag
else
    echo "Flag not found."
fi


