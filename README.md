# ah-feng_shui

This repository is one place for common resources needed with static code analyze of Ruby in AirHelp.

## Installation

In your `Gemfile` add:

```ruby
group :development, :test do
  gem 'AirHelp/ah-feng_shui'
end
```

Then install the gem locally:

```bash
$ bundle 
```

Note: you propably need to install cmake for this to work

```bash
$ brew install cmake
```

## Usage

Just run pronto using bundler and it will use the correct config:

```bash
$ bundle exec pronto run
```

## Set up and run specific runners only

### Rubocop

Create a `.rubocop.yml` file in your project and put this on top of:

```yml
inherit_gem:
  ah-feng_shui:
    - config/rubocop_default.yml
```

#### Usage

Just run pronto using bundler and it will use the correct config:

```bash
$ bundle exec rubocop
```
or

```bash
$ bundle exec pronto run -r rubocop
```
