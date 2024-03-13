#!/bin/sh
# Program:
#       Add Tomcat
# History:
# 2024/03/13    Sodo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

version=$(echo $2 | cut -d "." -f 1)

cd /tmp

sudo wget https://dlcdn.apache.org/tomcat/tomcat-$version/v$2/bin/apache-tomcat-$2.tar.gz

sudo mkdir /opt/tomcat$version
sudo tar -xvzf apache-tomcat-$2.tar.gz -C /opt/tomcat$version --strip-components=1

sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat$version tomcat
sudo chown -R tomcat:tomcat /opt/tomcat$version

cat <<EOF | sudo tee /etc/systemd/system/tomcat.service
[Unit]
Description=Tomcat $version servlet container
After=network.target

[Service]
Type=forking

User=tomcat
Group=tomcat

Environment="JAVA_HOME=/usr/lib/jvm/java-$3-openjdk-amd64"
Environment="CATALINA_PID=/opt/tomcat$version/temp/tomcat.pid"
Environment="CATALINA_HOME=/opt/tomcat$version"
Environment="CATALINA_BASE=/opt/tomcat$version"
ExecStart=/opt/tomcat$version/bin/startup.sh
ExecStop=/opt/tomcat$version/bin/shutdown.sh

RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target
EOF

userstr="<user username=\"admin$( date | md5sum | head -c 4 )\" password=\"$( date | md5sum | head -c 32 )\" roles=\"manager-gui,admin-gui\"/>"
sudo sed -i "/<\/tomcat-users>/i $userstr" /opt/tomcat$version/conf/tomcat-users.xml

sudo systemctl daemon-reload
sudo systemctl enable tomcat
sudo systemctl start tomcat