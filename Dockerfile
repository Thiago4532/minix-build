FROM debian:buster

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y build-essential curl git zlibc zlib1g zlib1g-dev g++

RUN useradd minix -m
VOLUME /home/minix/src
USER minix
COPY build-minix.sh /home/minix/build-minix.sh
WORKDIR /home/minix
RUN git config --global --add safe.directory /home/minix/src
CMD ./build-minix.sh
