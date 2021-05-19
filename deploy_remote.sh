#! /bin/bash
# deploy_remote.sh

# Je mets la chaine de connexion de ma machine distante dans une variable
MACHINE_DESTINATION=ec2-user@ec2-3-14-133-129.us-east-2.compute.amazonaws.com
PATH_SECRET_KEY=/secrets/kp-julie-1.pem

# On installe java sur la machine distante
ssh -o StrictHostKeyChecking=no -i $PATH_SECRET_KEY $MACHINE_DESTINATION 'sudo amazon-linux-extras install -y java-openjdk11'


ssh  -o StrictHostKeyChecking=no -i $PATH_SECRET_KEY $MACHINE_DESTINATION 'sudo mkdir -p /app && sudo chmod -R 777 /app && sudo chown ec'
scp  -o StrictHostKeyChecking=no -i $PATH_SECRET_KEY helloWorld.class $MACHINE_DESTINATION:/home/ec2-user/helloWorld.class
ssh  -o StrictHostKeyChecking=no -i $PATH_SECRET_KEY $MACHINE_DESTINATION 'sudo cp /home/ec2-user/helloWorld.class /app'
ssh  -o StrictHostKeyChecking=no -i $PATH_SECRET_KEY $MACHINE_DESTINATION 'sudo cd /app && sudo java helloWorld'
