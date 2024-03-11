#!/bin/sh
# Program:
#       Set mongodb config
# History:
# 2024/01/05    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

if grep -q "path: /dev/null" /etc/mongod.conf; then
    exit 0
fi

# findStr="  path: /var/log/mongodb/mongod.log";
# replaceStr="#  path: /var/log/mongodb/mongod.log";

# sed -i "s@$findStr@$replaceStr@g" /etc/mongod.conf

# sed "/$replaceStr/a\
#   journal:\
#     enabled: false" /etc/mongod.conf

findStr="  path: /var/log/mongodb/mongod.log";
replaceStr="  path: /dev/null";

sed -i "s@$findStr@$replaceStr@g" /etc/mongod.conf

touch /tmp/ansible-mongodb-config-completed
