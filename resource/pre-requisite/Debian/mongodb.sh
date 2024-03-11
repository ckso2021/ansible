#!/bin/sh
# Program:
#        mongodb prerequisite
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

curl -fsSL https://pgp.mongodb.com/server-$1.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-$1.gpg --dearmor --batch --yes
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-$1.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/$1 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-$1.list
touch /tmp/ansible-mongodb-prerequisite-completed