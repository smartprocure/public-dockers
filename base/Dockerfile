FROM ubuntu:latest
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential software-properties-common python-software-properties curl wget git-core ca-certificates nano ssh ruby && \
    apt-get clean && \
    gem install tiller

RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
