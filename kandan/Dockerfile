FROM smartprocure/base
MAINTAINER Marc Melvin <mmelvin@smartprocure.us>

RUN apt-get install -y --no-install-recommends ruby1.9.1-dev ruby-bundler libxslt-dev libxml2-dev libpq-dev libsqlite3-dev nodejs gcc g++ make && \
    apt-get clean

RUN cd / && \
    git clone https://github.com/kandanapp/kandan.git && \
    cd kandan && \
    gem install execjs && \
    bundle install

RUN cd /kandan && \
    bundle exec rake db:create db:migrate kandan:bootstrap

EXPOSE 3000
VOLUME /kandan/db
WORKDIR /kandan
CMD ["bundle", "exec", "thin", "start"]
