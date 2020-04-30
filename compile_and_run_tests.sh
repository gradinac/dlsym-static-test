#!/bin/sh
SCRIPT_PATH=$(dirname "$(readlink -f "$0")")
cd ${SCRIPT_PATH}
gcc -o main-dynamic main.c -ldl
./main-dynamic
echo "-------------------------"
gcc -o main-static main.c -ldl --static
./main-static