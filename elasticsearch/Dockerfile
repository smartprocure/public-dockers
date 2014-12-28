FROM smartprocure/java
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN cd /tmp && \
    wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.2.tar.gz && \
    tar zxvf elasticsearch-1.4.2.tar.gz && \
    rm -f elasticsearch-1.4.2.tar.gz && \
    mv /tmp/elasticsearch-1.4.2 /elasticsearch

RUN /elasticsearch/bin/plugin -i elasticsearch/marvel/latest && \
    /elasticsearch/bin/plugin -i mobz/elasticsearch-head && \
#    /elasticsearch/bin/plugin -i karmi/elasticsearch-paramedic && \
#    /elasticsearch/bin/plugin -i polyfractal/elasticsearch-segmentspy && \
    /elasticsearch/bin/plugin -i lmenezes/elasticsearch-kopf && \
    /elasticsearch/bin/plugin -i elasticsearch/elasticsearch-cloud-aws/2.4.1 # && \
#    /elasticsearch/bin/plugin -i jdbc --url http://xbib.org/repository/org/xbib/elasticsearch/plugin/elasticsearch-river-jdbc/1.3.4.4/elasticsearch-river-jdbc-1.3.4.4-plugin.zip && \
#    /elasticsearch/bin/plugin -i elasticsearch/elasticsearch-mapper-attachments/1.9.0 && \
#    /elasticsearch/bin/plugin -i com.github.richardwilly98.elasticsearch/elasticsearch-river-mongodb/2.0.4

# ADD ./sqljdbc4.jar /elasticsearch/lib/sqljdbc4.jar

EXPOSE 9200 9300
VOLUME ["/elasticsearch/data"]
WORKDIR /elasticsearch
CMD ["bin/elasticsearch"]
