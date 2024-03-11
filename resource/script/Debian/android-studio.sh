#!/bin/sh
# Program:
#       Add android studio 
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

cd /tmp

sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

wget https://dl.google.com/dl/android/studio/ide-zips/$1/android-studio-$1-linux.tar.gz -O android-studio.tar.gz
mkdir -p /opt/android-studio
tar -zxvf android-studio.tar.gz
mv android-studio/* /opt/android-studio/
rm -rf android-studio*