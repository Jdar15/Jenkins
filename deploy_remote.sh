#! /bin/bash
# deploy_remote.sh

ssh -i /secrets/kp-julie-1.pem ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com 'sudo java-version'
ssh -i /secrets/kp-julie-1.pem ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com 'if [[#? != 0]] then sudo amazon-linux-extras install -y java-openjdk11'
ssh -i /secrets/kp-julie-1.pem ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com 'sudo mkdir /app'
scp -i /secrets/kp-julie-1.pem helloWorld.class ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com:/app
ssh -i /secrets/kp-julie-1.pem ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com  'sudo cd /app && sudo java helloWorld'
