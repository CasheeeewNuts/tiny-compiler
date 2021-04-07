FROM ubuntu:18.04

RUN apt update \
&&  apt install -y gcc make git binutils libc6-dev gdb sudo \
&&  adduser --disabled-password --gecos '' user

USER user
WORKDIR /home/user