FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN apt-get install -y --no-install-recommends build-essential bison flex zlib1g-dev openssl libssl-dev pkg-config libperl-dev libpcre3-dev gettext supervisor && \
    apt-get clean

RUN cd /tmp && \
    git clone https://github.com/atheme/charybdis.git && \
    cd charybdis && \
    ./configure --enable-openssl --enable-ipv6 --with-nicklen=20 --with-topiclen=420 --prefix=/ircd && \
    make && \
    make install

RUN cd /tmp && \
    git clone https://github.com/atheme/atheme.git && \
    cd atheme && \
    git submodule update --init && \
    ./configure --enable-contrib --with-pcre --with-perl --prefix=/atheme && \
    make && \
    make install

COPY ircd.conf /ircd/etc/ircd.conf
COPY atheme.conf /atheme/etc/atheme.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN groupadd -r ircd && \
    useradd -r -g ircd -d /ircd -s /sbin/nologin ircd && \
    chown -R ircd:ircd /ircd && \
    chown -R ircd:ircd /atheme

EXPOSE 6667
CMD ["/usr/bin/supervisord"]
