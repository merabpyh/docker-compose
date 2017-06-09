#!/bin/bash

# Run from the directory with compose file

# set your user and pass
USR=XXX
USRPASS=XXX

DIMG=registry
WDIR=$(pwd)

# dir's from compose file
mkdir data auth && touch auth/htpasswd

# get image and save with new tag
docker pull $DIMG && docker tag $DIMG:latest $DIMG:static

# set user and pass for registry
docker run --entrypoint htpasswd $DIMG:static -Bbn $USR $USRPASS > $WDIR/auth/htpasswd

# start
docker-compose up -d

