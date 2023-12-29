#!/bin/bash
aws configure set aws_access_key_id "" --profile user2 && aws configure set aws_secret_access_key "" && aws configure set region "ap-south-1" && aws configure set output "text"
