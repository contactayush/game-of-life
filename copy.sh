#!/bin/bash
aws configure set aws_access_key_id "$AWS_ACCESS_KEY" && aws configure set aws_secret_access_key "$AWS_SECRET_ACCESS_KEY" && aws configure set region "ap-south-1" && aws configure set output "text"
aws s3 cp s3://buck-312-vel/java-project/gameoflife-web/target/gameoflife.war /mnt/servers/apache-tomcat-9.0.84/webapps
