# Dockerfile to bring up a 'server' for testing purposes
ARG BASE=debian:bullseye
FROM $BASE

RUN apt-get update && apt-get install -y openssh-server sudo
RUN useradd -rm -d /home/test -s /bin/bash -g root -G sudo -u 1000 test \
    && echo 'test:test' | chpasswd

RUN service ssh start
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
