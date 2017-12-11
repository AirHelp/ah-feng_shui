# ah-feng_shui

This repository is one place for common resources needed with static code analyze of Ruby in AirHelp.

## Installation

In your `Gemfile` add:

```ruby
group :test do
  # Configuration for pronto
  gem 'ah-feng_shui', git: 'github.com/AirHelp/ah-feng_shui', branch: 'master'
end
```

Then install the gem locally:

```bash
$ bundle
```

Note: you probably need to install cmake for this to work

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

Create a `.rubocop.yml` file in your project and make sure it starts with:

```yml
inherit_gem:
  ah-feng_shui:
    - config/rubocop_default.yml
```
It can also contain project specific rules to tweak Rubocop for special project needs.

For **Rubocop 0.51** and above use `rubocop_default_rails_5.1.yml`

#### Usage

Just run pronto using bundler and it will use the correct config:

```bash
$ bundle exec rubocop
```
or

```bash
$ bundle exec pronto run -r rubocop
```

### Reek

Copy `config/config-rails.reek` into your project root directory and tweak as needed.

#### Usage

```bash
$ bundle exec reek
```
or

```bash
$ bundle exec pronto run -r reek
```
