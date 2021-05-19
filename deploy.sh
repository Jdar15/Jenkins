#! /bin/bash
# deploy.sh
cd /home
pwd
mkdir -p app
cp helloWorld.class app
cd app
java helloWorld
