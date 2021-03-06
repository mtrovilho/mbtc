# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mbtc/version'

Gem::Specification.new do |spec|
  spec.name          = 'mbtc'
  spec.version       = MBTC::VERSION
  spec.authors       = ['Marcos Trovilho']
  spec.email         = ['marcos@trovilho.com']
  spec.description   = %q{CLI para Mercado Bitcoin}
  spec.summary       = %q{CLI para Mercado Bitcoin}
  spec.homepage      = 'https://github.com/mtrovilho/mbtc'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'methadone'
  spec.add_dependency 'httparty'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
