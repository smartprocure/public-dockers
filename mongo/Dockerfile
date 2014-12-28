FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends mongodb-org && \
    apt-get clean

RUN mkdir -p /data

EXPOSE 27017
VOLUME ["/data"]
WORKDIR /data
CMD ["/usr/bin/mongod", "--dbpath", "/data", "--replSet", "rs0"]
