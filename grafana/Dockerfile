FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN cd /tmp && \
    wget http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb && \
    sudo dpkg -i influxdb_latest_amd64.deb && \
    rm influxdb_latest_amd64.deb && \
    mkdir -p /opt/influxdb/shared/data

RUN cd /tmp && \
    mkdir -p /var/www && \
    curl http://grafanarel.s3.amazonaws.com/grafana-1.8.1.tar.gz > grafana.tar.gz && \
    tar zxvf grafana.tar.gz --strip-components=1 --no-same-owner -C /var/www && \
    rm grafana.tar.gz

ADD var/www/config.js /var/www/config.js
ADD opt/influxdb/current/config.toml /opt/influxdb/current/config.toml
ADD opt/start.sh /opt/start.sh
ADD etc/supervisord.conf /etc/supervisord.conf

EXPOSE 8000 8083 8086 8090
CMD ["/opt/start.sh"]
