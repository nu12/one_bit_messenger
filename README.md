# OneBitMessenger

A messaging rails application, using ActionCable and Bulma.

## Deploy

Run `docker-compose up` and access the application on localhost:3000 when it is ready.

### The long way

Dependencies

* Rails 6.0.1
* Bundler
* Nodejs
* Yarn

```shell
$ git clone https://github.com/nu12/one_bit_messenger.git
$ cd one_bit_messenger
$ bundle install
$ yarn install
$ rails webpacker:compile
$ rails db:create
$ rails db:migrate
$ rails s
```

Access the application on localhost:3000 when it is ready.

## TODO

* Challenge: mark messages as read in real time to the sender when the receiver gets it. 

Pull request are welcome.
