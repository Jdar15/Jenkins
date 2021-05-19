#! /bin/bash
# deploy.sh
mkdir -p /test
cp Jenkins.class /test
cd /test
java Jenkins
