#!/bin/sh
# Program:
#       Add Rust
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y