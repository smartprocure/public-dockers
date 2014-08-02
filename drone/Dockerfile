FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN cd /tmp && \
    wget http://downloads.drone.io/latest/drone.deb && \
    dpkg -i drone.deb

EXPOSE 8080
CMD ["droned"]
