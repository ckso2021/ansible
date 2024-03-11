#!/bin/sh
# Program:
#       Add NodeJS pre-requisite
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

curl -fsSL https://deb.nodesource.com/setup_$1.x | sudo -E bash
