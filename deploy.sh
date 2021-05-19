#! /bin/bash
# deploy.sh
pwd
mkdir -p test1/
sudo cp helloWorld.class test1
sudo cd test1
pwd
java helloWorld
