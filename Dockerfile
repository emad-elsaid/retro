FROM ruby:slim-buster

WORKDIR /app
COPY . .
CMD ["./server"]