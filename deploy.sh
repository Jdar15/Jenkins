#! /bin/bash
# deploy sh
sudo mkdir -p /app
sudo cp helloWorld.class /app
sudo cd /app
java helloWorld
