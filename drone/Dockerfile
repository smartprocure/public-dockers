FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN cd /tmp && \
    wget http://downloads.drone.io/latest/drone.deb && \
    dpkg -i drone.deb

RUN mkdir -p /var/lib/drone/

EXPOSE 8080
ENTRYPOINT ["droned"]
CMD ["-datasource", "/var/lib/drone/drone.sqlite", "-port", ":8080"]
