#!/usr/bin/env bash
# exit on error
rm -rf vendor/bundle .bundle .gems tmp/cache

bundle config set --local force_ruby_platform true


bundle config set --local deployment 'true'
bundle config set --local without 'development test'


bundle install --clean


bundle exec rails assets:precompile
bundle exec rails assets:clean


bundle exec rails db:migrate