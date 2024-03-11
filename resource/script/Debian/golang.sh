#!/bin/sh
# Program:
#       setup golang
# History:
# 2024/01/27    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

cd /tmp
wget "https://dl.google.com/go/$(curl https://go.dev/VERSION?m=text | head -n 1).linux-amd64.tar.gz" -O go.tar.gz
sudo tar -C /usr/local -xzf go.tar.gz
rm -rf go.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "export GOPATH=$HOME/go"  >> ~/.bashrc
echo "export PATH=$PATH:$GOPATH/bin"  >> ~/.bashrc
