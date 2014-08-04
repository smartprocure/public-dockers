FROM smartprocure/nodejs
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN cd /tmp && \
    git clone https://github.com/hipache/hipache.git && \
    npm install -g ./hipache && \
    mkdir -p /var/log/nginx

ADD config.json /usr/lib/node_modules/hipache/config/config.json

EXPOSE 80 443

CMD ["/usr/bin/hipache"]
