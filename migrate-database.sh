#!/bin/bash
set -e

echo "Executing bundle exec 'rake db:migrate' ..."
gem install bundler -f
npm install bower
RAILS_ENV=production bundle exec rake db:migrate
