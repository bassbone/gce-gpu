#!/bin/bash

export LOCAL_UID=$(id -u $USER)
export LOCAL_GID=$(id -g $USER)
docker-compose build $1
docker-compose up -d $1
