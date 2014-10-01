FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN wget http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb && \
    sudo dpkg -i influxdb_latest_amd64.deb && \
    rm influxdb_latest_amd64.deb

EXPOSE 8083 8086 8090
VOLUME /opt/influxdb/current/config.toml
VOLUME /opt/influxdb/shared/data
CMD ["/usr/bin/influxdb", "-config=/opt/influxdb/current/config.toml"]
