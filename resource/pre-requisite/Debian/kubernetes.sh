#!/bin/sh
# Program:
#        K8S prerequisite
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

SHORT_VERSION=$(curl -L -s https://dl.k8s.io/release/stable.txt)
SHORT_VERSION=${SHORT_VERSION%.*}

echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/$SHORT_VERSION/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list

curl -fsSL https://pkgs.k8s.io/core:/stable:/$SHORT_VERSION/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

# sudo mkdir -m 755 /etc/apt/keyrings
# curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
# curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
# echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list

touch /tmp/ansible-kubernetes-prerequisite-completed