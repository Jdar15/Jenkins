#! /bin/bash
# deploy.sh
pwd
sudo mkdir -p /app
sudo cp helloWorld.class /app
sudo cd /app
pwd
java helloWorld
