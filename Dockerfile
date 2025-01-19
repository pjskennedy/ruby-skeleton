FROM ruby:3.3.4
# Need to install CURL for Heroku logging
RUN apt-get install curl

RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle config set --local without 'development test'
RUN bundle install
RUN bundle binstubs --all

COPY . .

CMD ["bundle", "exec", "ruby", "main.rb"]
