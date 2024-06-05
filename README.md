# Docker Rails

Bootstrap Rails project.

Docker config with gems cache on volume.

### Installation

Initialize Gemfile on src dir with:

```ruby
source 'https://rubygems.org'
gem 'rails'
```

Run on src dir:

```sh
docker-compose run web bundle install
docker-compose run web rails new .
```
