# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gyazo/server/version'

Gem::Specification.new do |spec|
  spec.name          = "gyazo-server"
  spec.version       = Gyazo::Server::VERSION
  spec.authors       = ["Naoto SHINGAKI"]
  spec.email         = ["n.shingaki@gmail.com"]
  spec.summary       = %q{Gyazo Server}
  spec.description   = %q{Gyazo Server}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'sinatra'

end
