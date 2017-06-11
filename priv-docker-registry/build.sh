#!/bin/bash

# Run from the directory with compose file

if [ "$#" -ne 2 ]
then
  echo "Usage: ./build.sh \"USER\" \"PASS\""
  echo "Be careful, do not use special characters in the username or password"
  exit 1
fi

# set your user and pass
USR=$1
USRPASS=$2

DIMG=registry

# dir's from compose file
mkdir data auth && touch auth/htpasswd

# get image and save with new tag
docker pull $DIMG && docker tag $DIMG:latest $DIMG:static

# set user and pass for registry
docker run --rm --entrypoint htpasswd $DIMG:static -Bbn $USR $USRPASS > ./auth/htpasswd

# start
docker-compose up -d

