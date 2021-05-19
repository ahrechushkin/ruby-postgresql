#ruby 2.6.3
FROM ruby:2.6

RUN apt-get update && apt-get install -y postgresql
RUN echo "done"
