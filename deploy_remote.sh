#! /bin/bash
# deploy_remote.sh

ssh -i /secrets/kp-julie-1.pem ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com 'sudo amazon-linux-extras install -y java-openjdk11'

ssh -i /secrets/kp-julie-1.pem ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com 'sudo mkdir /app && sudo chmod -R 666 /app'
scp -i /secrets/kp-julie-1.pem helloWorld.class ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com
ssh -i /secrets/kp-julie-1.pem ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com  'sudo mv helloWorld.class /app'
ssh -i /secrets/kp-julie-1.pem ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com  'sudo cd /app && sudo java helloWorld'
