FROM smartprocure/java
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN cd /tmp && \
    wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.2.3.tar.gz && \
    tar zxvf elasticsearch-1.2.3.tar.gz && \
    rm -f elasticsearch-1.2.3.tar.gz && \
    mv /tmp/elasticsearch-1.2.3 /elasticsearch

RUN /elasticsearch/bin/plugin -i mobz/elasticsearch-head && \
    /elasticsearch/bin/plugin -i karmi/elasticsearch-paramedic && \
    /elasticsearch/bin/plugin -i polyfractal/elasticsearch-segmentspy && \
    /elasticsearch/bin/plugin -i elasticsearch/elasticsearch-cloud-aws/2.2.0 && \
    /elasticsearch/bin/plugin -i jdbc --url http://xbib.org/repository/org/xbib/elasticsearch/plugin/elasticsearch-river-jdbc/1.2.2.0/elasticsearch-river-jdbc-1.2.2.0-plugin.zip

ADD ./sqljdbc4.jar /elasticsearch/lib/sqljdbc4.jar

EXPOSE 9200 9300
VOLUME ["/data"]
WORKDIR /data
ENTRYPOINT ["/elasticsearch/bin/elasticsearch"]
CMD []
