# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ah/feng_shui/version'

Gem::Specification.new do |spec|
  spec.name          = 'ah-feng_shui'
  spec.version       = Ah::FengShui::VERSION
  spec.authors       = ['AirHelp']
  spec.email         = ['info@airhelp.com']

  spec.summary       = 'Pronto and runners common configuration for AirHelp'
  spec.description   = 'Pronto and runners common configuration for AirHelp'
  spec.homepage      = 'https://github.com/AirHelp/ah-feng_shui'

  spec.metadata['allowed_push_host'] = 'https://github.com/'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'

  # Pronto runners
  spec.add_runtime_dependency 'pronto', '~> 0.9.4'
  spec.add_runtime_dependency 'pronto-rubocop'
  spec.add_runtime_dependency 'pronto-brakeman'
  spec.add_runtime_dependency 'pronto-flay'
  spec.add_runtime_dependency 'pronto-rails_best_practices'
  spec.add_runtime_dependency 'pronto-reek'

  # Other
  spec.add_runtime_dependency 'rubocop-rspec'
end
