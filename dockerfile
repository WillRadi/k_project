FROM ruby:3.1.0

# Instalar dependências pro Kafka
RUN apt-get update -qq && apt-get install -y nodejs build-essential

WORKDIR /kproject

COPY Gemfile /kproject/Gemfile
COPY Gemfile.lock /kproject/Gemfile.lock
RUN bundle install

COPY . /kproject

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
