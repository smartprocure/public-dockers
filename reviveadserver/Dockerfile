FROM maxexcloo/nginx-php:latest
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN cd /tmp && \
    wget http://download.revive-adserver.com/revive-adserver-3.0.5.tar.gz && \
    tar zxvf revive-adserver-3.0.5.tar.gz && \
    rm -f revive-adserver-3.0.5.tar.gz && \
    mv /tmp/revive-adserver-3.0.5 /data/http
