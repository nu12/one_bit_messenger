FROM ruby:2.6.5

WORKDIR /app

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update  \
    && apt-get install -y nodejs yarn \
    && rm -rf /var/lib/apt/lists/*

COPY . /app/

RUN bundle install  \
    && yarn install \
    && rails webpacker:compile \
    && rails db:create \
    && rails db:migrate

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]