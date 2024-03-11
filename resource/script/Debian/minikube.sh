#!/bin/sh
# Program:
#       Add Minikube
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

cd /tmp
sudo curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

sudo apt install libatk-adaptor libgail-common -y

minikube config set driver docker
# minikube addons enable dashboard
# minikube addons enable ingress

# minikube start --driver=docker

