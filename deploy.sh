#! /bin/bash
# deploy sh
sudo mkdir -p /app
sudo cp helloWorld.class /app
cd /app
java helloWorld
