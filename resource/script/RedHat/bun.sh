#!/bin/sh
# Program:
#      Add Bun package source for apt package manager
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

curl -fsSL https://bun.sh/install | bash