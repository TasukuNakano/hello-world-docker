FROM ruby:2.4.1-alpine

COPY Gemfile* /app/
WORKDIR /app

RUN apk -U upgrade && \
    gem install bundler && \
    gem install sinatra

COPY . /app
RUN ruby /app/home.rb
