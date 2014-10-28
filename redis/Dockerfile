FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN ln -s -f /bin/true /usr/bin/chfn && \
    add-apt-repository ppa:chris-lea/redis-server && \
    apt-get update && \
    apt-get install -y --no-install-recommends redis-server && \
    apt-get clean

RUN sed -i 's/^\(bind .*\)$/# \1/' /etc/redis/redis.conf && \
    sed -i 's/^\(daemonize .*\)$/# \1/' /etc/redis/redis.conf && \
    sed -i 's/^\(stop-writes-on-bgsave-error .*\)$/stop-writes-on-bgsave-error no/' /etc/redis/redis.conf && \
#    sed -i 's/^\(dir .*\)$/# \1\ndir \/data/' /etc/redis/redis.conf && \
#    sed -i 's/^\(logfile .*\)$/# \1/' /etc/redis/redis.conf && \
#    mkdir -p /data && \
    echo vm.overcommit_memory = 1 >> /etc/sysctl.conf

EXPOSE 6379
VOLUME ["/var/lib/redis"]
#VOLUME ["/data"]
#WORKDIR /data
#ENTRYPOINT ["redis-server"]
CMD ["redis-server", "/etc/redis/redis.conf"]
