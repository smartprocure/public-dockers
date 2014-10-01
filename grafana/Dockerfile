FROM mirkokiefer/nginx
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN cd /tmp && \
    curl http://grafanarel.s3.amazonaws.com/grafana-1.8.1.tar.gz > grafana.tar.gz && \
    tar zxvf grafana.tar.gz --strip-components=1 --no-same-owner -C /data/www && \
    rm grafana.tar.gz

VOLUME /data/www/config.js
