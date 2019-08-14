FROM ruby:2.6.3-slim-buster
RUN apt-get update -qq &&\
    apt-get install -y curl &&\
    curl -sL https://deb.nodesource.com/setup_8.x | bash - &&\
    apt-get install -y nodejs mariadb-client-10.3 &&\
    apt-get install -y build-essential libpq-dev
RUN mkdir /web
WORKDIR /web
ADD web/Gemfile /web/Gemfile
ADD web/Gemfile.lock /web/Gemfile.lock
RUN bundle install
ADD web /web
