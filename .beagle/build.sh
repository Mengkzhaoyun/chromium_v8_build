#!/bin/bash

set -ex

sed -i "s@http://.*archive.ubuntu.com@http://repo.huaweicloud.com@g" /etc/apt/sources.list
sed -i "s@http://.*security.ubuntu.com@http://repo.huaweicloud.com@g" /etc/apt/sources.list

export GNUTLS_CPUID_OVERRIDE=0x1 
apt update 
apt install apt-transport-https ca-certificates -y

apt install -y --no-install-recommends git curl wget build-essential software-properties-common patchelf sudo zip unzip execstack cmake

apt install -y --no-install-recommends python3 python python3-pip python3-distutils python3-testresources ninja-build

apt clean

pip3 install coloredlogs