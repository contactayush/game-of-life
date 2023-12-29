#!/bin/bash
yum update -y
yum install java-1.8.0-openjdk-devel.x86_64 -y
cd /mnt && mkdir servers
cd servers && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.84/bin/apache-tomcat-9.0.84.zip
unzip https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.84/bin/apache-tomcat-9.0.84.zip
rm -rf apache-tomcat-9.0.84.zip
cd apache-tomcat-9.0.84 && chmod -R 777 *
