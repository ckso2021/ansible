#!/bin/sh
# Program:
#       Nodejs pre-requisite
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

curl -fsSL https://rpm.nodesource.com/setup_$1.x | bash -
