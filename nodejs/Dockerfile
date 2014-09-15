FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN add-apt-repository ppa:chris-lea/node.js && \
    apt-get update && \
    apt-get install -y --no-install-recommends nodejs && \
    apt-get clean

# install docker-in-docker for builds
RUN apt-get install -y apparmor && \
    curl -s https://get.docker.io/ubuntu/ | sudo sh
ADD wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker
