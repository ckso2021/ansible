#!/bin/sh
# Program:
#        Docker config
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

sudo groupadd docker
sudo usermod -aG docker $1
sudo chmod 666 /var/run/docker.sock
touch /tmp/ansible-docker-config-completed