#!/bin/sh
# Program:
#       setup Deno
# History:
# 2024/01/27    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

curl -fsSL https://deno.land/install.sh | sh
echo 'export DENO_INSTALL="$HOME/.deno"'  >> ~/.bashrc
echo 'export PATH="$PATH:$DENO_INSTALL/bin"'  >> ~/.bashrc