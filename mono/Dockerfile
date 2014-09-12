FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN add-apt-repository ppa:inizan-yannick/mono && \
    apt-get update && \
    apt-get install -y --no-install-recommends mono-complete && \
    apt-get clean

VOLUME ["/data"]
WORKDIR /data
