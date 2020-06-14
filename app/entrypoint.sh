#!/bin/bash

echo $LOCAL_UID
echo $LOCAL_GID

USER_ID=${LOCAL_UID:-9001}
GROUP_ID=${LOCAL_GID:-9001}

echo "Starting with UID : $USER_ID, GID: $GROUP_ID"
useradd -u $USER_ID -o -m jupyter
groupmod -g $GROUP_ID jupyter
export HOME=/home/jupyter

sudo -u jupyter jupyter notebook --port=4000 --ip=0.0.0.0
