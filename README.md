# ah-feng_shui

This repository is one place for common resources needed with static code analyze of Ruby in AirHelp.

## Installation

In your `Gemfile` add:

```ruby
group :development, :test do
  gem 'AirHelp/ah-ruby_style_guide'
end
```

Then install the gem locally:

```bash
$ bundle 
```

## Usage

Just run pronto using bundler and it will use the correct config:

```bash
$ bundle exec pronto run
```

## Rubocop

Create a `.rubocop.yml` file in your project and put this on top of:

```yml
inherit_gem:
  ah-feng_shui:
    - config/rubocop_default.yml
```

### Usage

Just run pronto using bundler and it will use the correct config:

```bash
$ bundle exec rubocop
```
