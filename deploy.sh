#! /bin/bash
# deploy.sh
mkdir -p /app
chmod 764 /app
cp helloWorld.class /app
cd /app
java helloWorld
