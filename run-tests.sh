#!/bin/bash


SCRIPT_PATH=$(dirname "$(readlink -f "$0")")
pushd ${SCRIPT_PATH}

echo 'Running test on Ubuntu 18.04'
docker build -t gradinac/dlsymtest-ubuntu:18.04 -f Dockerfile-Ubuntu-18-04 . &> /dev/null
docker run gradinac/dlsymtest-ubuntu:18.04

echo 'Running test on Oracle Linux 7.7'
docker build -t gradinac/dlsymtest-oraclelinux:7.7 -f Dockerfile-OracleLinux-7-7 . &> /dev/null
docker run gradinac/dlsymtest-oraclelinux:7.7

echo 'Running test on Oracle Linux 6.10'
docker build -t gradinac/dlsymtest-oraclelinux:6.10 -f Dockerfile-OracleLinux-6-10 . &> /dev/null
docker run gradinac/dlsymtest-oraclelinux:6.10

echo 'Running test on Alpine Linux 3.11'
docker build -t gradinac/dlsymtest-alpine:3.11 -f Dockerfile-Alpine-3-11 . &> /dev/null
docker run gradinac/dlsymtest-alpine:3.11

popd