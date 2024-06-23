# syntax = docker/dockerfile:1

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version and Gemfile
ARG RUBY_VERSION=3.0.0
FROM ruby:3.0.0 AS drkiq-development

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./


RUN bundle install

COPY . /usr/src/app

# Start the server by default, this can be overwritten at runtime
EXPOSE 3000
CMD ["./bin/rails", "server"]