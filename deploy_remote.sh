#! /bin/bash
# deploy_remote.sh
java-version
if [[#? != 0]] then sudo amazon-linux-extras install -y java-openjdk11
ssh -c "kp-julie-1.pem" ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com mkdir /app
scp -i /secrets/"kp-julie-1.pem" helloWorld.class ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com
ssh -i "kp-julie-1.pem" ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com  -c 'cd /app && java helloWorld'
