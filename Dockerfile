FROM ruby:2.4.1-alpine

COPY Gemfile* /app/
WORKDIR /app

RUN apk -U upgrade && \
    gem install bundler && \
    bundle

COPY . /app
