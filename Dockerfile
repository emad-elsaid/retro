FROM ruby:slim-buster

WORKDIR /app
COPY Gemfile.lock  Gemfile ./
RUN bundle install
COPY . .
CMD ["./server","-o", "0.0.0.0"]