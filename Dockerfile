FROM ruby:2.5.1

# Need to install CURL for Heroku logging
RUN apt-get install curl

WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install --binstubs --without development test
COPY . .

CMD ["bundle", "exec", "ruby", "main.rb"]
