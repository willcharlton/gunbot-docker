# gunbot-xt-edition-docker

Gunbot Edition Docker

[![Docker Pulls](https://img.shields.io/docker/pulls/jakkie/gunbot-xt-edition-docker.svg)](https://hub.docker.com/r/jakkie/gunbot-xt-edition-docker/)
[![](https://images.microbadger.com/badges/image/jakkie/gunbot-xt-edition-docker.svg)](https://microbadger.com/images/jakkie/gunbot-xt-edition-docker "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/jakkie/gunbot-xt-edition-docker.svg)](https://microbadger.com/images/jakkie/gunbot-xt-edition-docker "Get your own version badge on microbadger.com")
[![Docker Automated build](https://img.shields.io/docker/automated/jakkie/gunbot-xt-edition-docker.svg)](https://hub.docker.com/r/jakkie/gunbot-xt-edition-docker/)
[![Docker Build Status](https://img.shields.io/docker/build/jakkie/gunbot-xt-edition-docker.svg)](https://hub.docker.com/r/jakkie/gunbot-xt-edition-docker/)

Compatible with Gunbot version : v11.7.6
`https://github.com/GuntharDeNiro/BTCT/releases`

## Install Docker

- Windows `https://docs.docker.com/toolbox/toolbox_install_windows/`
- Mac OS `https://docs.docker.com/docker-for-mac/install/`
- Linux Ubuntu `https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce`

## Quick Guide

- To Run Container

```bash
make run
```

- After gunbot is running browse to the url example http://your-ip:5000

```bash
http://localhost:5000
```

## DIY Guide

### Installing the container

- Build the container from the repository.

```bash
export GUNBOT_VERSION=v24.3.2
make build
```

### Running the gunbot container with docker-compose

- To install docker compose see `https://docs.docker.com/compose/install/`
- To start docker-compose to run the container.

```bash
docker-compose up -d
```

### Unraid

Provisioning gunbot on an Unraid system invloves using the files `unraid-container-config.xml` and `unraid-container-command.sh` to configure a Docker Application on your Unraid server. Before installing the app, run the following commands or their equivalents to make sure Gunbot has a valid config file or else it will crash. 

```
ssh root@<unraid-server> "mkdir -p mnt/user/appdata/gunbot/gunthy_linux/"
scp gunthy_linux/config.js root@<unraid-server>:/mnt/user/appdata/gunbot/gunthy_linux/config.js
```
