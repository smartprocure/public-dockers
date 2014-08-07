FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN apt-get install -y --no-install-recommends build-essential python-dev libxml2-dev libxslt1-dev antiword poppler-utils python-pip zlib1g-dev && \
    apt-get clean && \
    pip install textract

ENTRYPOINT ["textract"]
