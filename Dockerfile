FROM ruby:2.3.3
MAINTAINER Tony Boucheau
LABEL version="1.0"
LABEL description="This container host rails for development purpose, it has to be linked with postgres container"
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp