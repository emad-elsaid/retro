FROM ruby:slim-buster

WORKDIR /app

# Install required build tools and libraries
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

COPY Gemfile.lock Gemfile ./
RUN bundle install

COPY . .

CMD ["./server", "-o", "0.0.0.0"]
