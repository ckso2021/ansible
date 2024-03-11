#!/bin/sh
# Program:
#       Add Android Studio
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

cd /tmp

sudo yum install -y zlib.i686 ncurses-libs.i686 bzip2-libs.i686

wget https://dl.google.com/dl/android/studio/ide-zips/$1/android-studio-$1-linux.tar.gz -O android-studio.tar.gz
mkdir -p /opt/android-studio
tar -zxvf android-studio.tar.gz
mv android-studio/* /opt/android-studio/
rm -rf android-studio*