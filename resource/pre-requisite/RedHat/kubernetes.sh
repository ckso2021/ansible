#!/bin/sh
# Program:
#        K8S pre-requisite
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# This overwrites any existing configuration in /etc/yum.repos.d/kubernetes.repo
SHORT_VERSION=$(curl -L -s https://dl.k8s.io/release/stable.txt)
SHORT_VERSION=${SHORT_VERSION%.*}

cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/$SHORT_VERSION/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/$SHORT_VERSION/rpm/repodata/repomd.xml.key
EOF

touch /tmp/ansible-kubernetes-prerequisite-completed