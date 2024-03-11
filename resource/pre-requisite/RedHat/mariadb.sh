#!/bin/sh
# Program:
#        MariaDB pre-requisite
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

cd /tmp

wget https://r.mariadb.com/downloads/mariadb_repo_setup

echo "935944a2ab2b2a48a47f68711b43ad2d698c97f1c3a7d074b34058060c2ad21b  mariadb_repo_setup" \
       | sha256sum -c -

chmod +x mariadb_repo_setup

sudo ./mariadb_repo_setup


touch /tmp/ansible-mariadb-prerequisite-completed