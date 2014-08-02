FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN alias adduser='useradd' && \
    add-apt-repository ppa:chris-lea/redis-server && \
    apt-get update && \
    apt-get install -y --no-install-recommends redis-server && \
    apt-get clean

RUN sed -i 's/^\(bind .*\)$/# \1/' /etc/redis/redis.conf && \
    sed -i 's/^\(daemonize .*\)$/# \1/' /etc/redis/redis.conf && \
    sed -i 's/^\(dir .*\)$/# \1\ndir \/data/' /etc/redis/redis.conf && \
    sed -i 's/^\(logfile .*\)$/# \1/' /etc/redis/redis.conf && \
    mkdir -p /data && \
    echo vm.overcommit_memory = 1 >> /etc/sysctl.conf

EXPOSE 6379
VOLUME ["/data"]
WORKDIR /data
ENTRYPOINT ["redis-server"]
CMD ["/etc/redis/redis.conf"]
