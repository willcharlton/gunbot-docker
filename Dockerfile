FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
    unzip wget && \
    apt-get clean

# ARG GUNBOT_VERSION
# ENV GUNBOT_VERSION ${GUNBOT_VERSION}

RUN mkdir -p /gunbot
WORKDIR /gunbot

COPY install.sh .

RUN ./install.sh

RUN unzip -o gunthy_linux.zip
RUN chmod +x gunthy_linux/gunthy-linux

WORKDIR /gunbot/gunthy_linux

VOLUME /gunbot/gunthy_linux

CMD ./gunthy-linux

EXPOSE 5000
