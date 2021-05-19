#! /bin/bash
# deploy.sh
cd 
pwd
mkdir -p app
cp helloWorld.class app
cd app
java helloWorld
