FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /web
WORKDIR /web
ADD web/Gemfile /web/Gemfile
ADD web/Gemfile.lock /web/Gemfile.lock
RUN bundle install
ADD web /web
