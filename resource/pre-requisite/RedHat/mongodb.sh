#!/bin/sh
# Program:
#        MongoDB pre-requisite
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#VERSION=$($2 | cut -d'.' -f1)


#echo "repo_gpgcheck=0" >> /etc/yum.conf

#if [ $2 -gt 8 ]
#then
#  cat <<EOT > /etc/yum.repos.d/mongodb-org-"$1".repo
#[mongodb-org-$1]
#name=MongoDB Repository
#baseurl=https://repo.mongodb.com/yum/redhat/$2/mongodb-org/$1/x86_64/
#gpgcheck=1
#enabled=1
#gpgkey=https://pgp.mongodb.com/server-$1.asc
#EOT
#else
#  cat <<EOT > /etc/yum.repos.d/mongodb-org-"$1".repo
#[mongodb-org-$1]
#name=MongoDB Repository
#baseurl=https://repo.mongodb.org/yum/redhat/$2/mongodb-org/$1/x86_64/
#gpgcheck=1
#enabled=1
#gpgkey=https://pgp.mongodb.com/server-$1.asc
#EOT
#fi

cat <<EOT > /etc/yum.repos.d/mongodb-org-"$1".repo
[mongodb-org-$1]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$2/mongodb-org/$1/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://pgp.mongodb.com/server-$1.asc
EOT

touch /tmp/ansible-mongodb-prerequisite-completed