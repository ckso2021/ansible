#!/bin/sh
# Program:
#        Docker pre-requisite
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#for pkg in docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine podman runc; do sudo yum remove $pkg; done
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

touch /tmp/ansible-docker-prerequisite-completed