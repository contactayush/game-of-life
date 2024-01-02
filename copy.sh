#!/bin/bash
aws configure set aws_access_key_id "$AWS_SECRET_ACCESS_KEY" --profile user2 && aws configure set aws_secret_access_key "$AWS_ACCESS_KEY" && aws configure set region "ap-south-1" && aws configure set output "text"
