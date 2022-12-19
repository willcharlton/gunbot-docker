FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
        unzip \
        wget \
        curl \
        jq && \
    apt-get clean

# ARG GUNBOT_VERSION
# ENV GUNBOT_VERSION ${GUNBOT_VERSION}

RUN mkdir -p /gunbot
WORKDIR /gunbot

COPY install.sh .

RUN ./install.sh

WORKDIR /gunbot/gunthy_linux

CMD ./gunthy-linux

EXPOSE 5000
