FROM ubuntu:latest
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential software-properties-common python-software-properties curl wget git-core ca-certificates nano ssh supervisor apparmor && \
    apt-get clean && \
    curl -s https://get.docker.io/ubuntu/ | sudo sh

RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
