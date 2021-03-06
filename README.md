# drail242a

This is a Rails 4.2.6 app.

## Documentation

* Staging and production deployment instructions are in `DEPLOYMENT.md`

## Prerequisites

This project requires:

* Ruby 2.1.4, preferably managed using [rbenv][]
* MySQL must be installed and accepting connections

## Getting started

### bin/setup

Run the `bin/setup` script. This script will:

* Check you have the required Ruby version
* Install gems using Bundler
* Create local copies of `.env`
* Create, migrate, and seed the database

### Run it!

1. Run `rspec spec` to make sure everything works.
2. Run `forman start` to start the Rails app (and other dependent processes if present).

[rbenv]:https://github.com/sstephenson/rbenv

## Rake tasks

```
# generate an erd.pdf from your models
bin/rake erd
```

## Tests

Running `rspec spec` will run all the tests and outputs a coverage report to `coverage/index.html`

## Metrics/code style/other handy commands

```
# check your code using rubocop with the rules specified in .rubocop.yml
rubocop

# check for vulnerable versions in your Gemfile (this will also be done on deploy with capistrano)
bundle exec bundle-audit update
bundle exec bundle-audit

# check for rails security issues using brakeman
bundle exec brakeman
```
