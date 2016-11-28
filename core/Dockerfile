FROM ruby:2.3.3

RUN apt-get update -qq
RUN apt-get install -y -qq build-essential
RUN apt-get install -y -qq nodejs
RUN apt-get install -y -qq libmysqlclient-dev

ENV BUNDLE_PATH /bundle
ENV BUNDLE_JOBS 5

RUN mkdir -p /app

WORKDIR /app

RUN gem install bundler --no-ri --no-rdoc

CMD bundle exec rails s -p 3000 -b '0.0.0.0'