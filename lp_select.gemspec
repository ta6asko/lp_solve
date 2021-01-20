# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'lp_select/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.4.0'
  spec.name                  = 'lp_select'
  spec.version               = LpSelect::VERSION
  spec.authors               = ['Oleg Prokhoda']
  spec.email                 = ['ta6asko@gmail.com']
  spec.description           = 'Ruby bindings for LPSolve'
  spec.summary               = 'Ruby bindings for LPSolve'
  spec.homepage              = 'https://github.com/asee/lp_select'
  spec.license               = 'MIT'
  spec.files                 = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables           = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files            = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths         = ['lib']

  spec.add_dependency 'ffi'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
