FROM ruby:2.6.6

RUN apt-get update \
  && apt-get install -y postgresql postgresql-contrib nodejs npm sudo xvfb cmake \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 5432
