#!/usr/bin/env bash

# --mount type=bind,src=$(CURDIR)/gunthy_linux/config.js,target=/gunbot/gunthy_linux/config.js

docker run \
    --name='Gunbot' \
    --net='bridge' \
    -e TZ="America/Los_Angeles" \
    -e HOST_OS="Unraid" \
    -e HOST_HOSTNAME="Valhalla" \
    -e HOST_CONTAINERNAME="Gunbot" \
    -l net.unraid.docker.managed=dockerman \
    -l net.unraid.docker.webui='http://[IP]:[PORT:5001]/' \
    -l net.unraid.docker.icon='TODO' \
    -p '5001:5000/tcp' \
    -v ${PWD}/gunthy_linux/config.js:/gunbot/gunthy_linux/config.js \
    -v ${PWD}/gunthy_linux/json:/gunbot/gunthy_linux/json \
    -v ${PWD}/gunthy_linux/backups:/gunbot/gunthy_linux/backups \
    -v ${PWD}/gunthy_linux/logs:/gunbot/gunthy_linux/logs \
    'williamcharltonengineering/gunbot:latest'