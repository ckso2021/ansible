#!/bin/sh
# Program:
#       Add VMware common settings
# History:
# 2024/01/01    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH



mkdir -p /share
chown -R $1:root /share

echo ".host:/share    /share    fuse.vmhgfs-fuse    defaults,allow_other,nofail,uid=1000     0        0" >> /etc/fstab

touch /tmp/ansible-vmware-script-completed