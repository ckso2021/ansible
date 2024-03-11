#!/bin/sh
# Program:
#       Add Jetbrain Toolbox
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

cd /opt
wget "https://download.jetbrains.com/product?code=TB&latest&distribution=linux" -O jetbrains-toolbox.tar.gz
mkdir -p /opt/jetbrains
tar -zxvf jetbrains-toolbox.tar.gz
mv jetbrains-toolbox-*/* jetbrains/
rm -rf jetbrains-toolbox*
