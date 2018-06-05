FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /beerSnob
WORKDIR /beerSnob
COPY Gemfile /beerSnob/Gemfile
COPY Gemfile.lock /beerSnob/Gemfile.lock
RUN bundle install
COPY . /beerSnob
