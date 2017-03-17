# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'on/metal/version'

Gem::Specification.new do |spec|
  spec.name          = "on-metal"
  spec.version       = ON::Metal::VERSION
  spec.authors       = ["Scott Hill", "Eric Lutz"]
  spec.email         = ["scott.hill@life.church"]
  spec.summary       = "Life Church Open Network Design Framework"
  spec.description   = "Life Church Open Network Design Framework"
  spec.homepage      = "http://on-metal.herokuapp.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.4"
  spec.add_dependency('sass', ['~> 3.4'])
  spec.add_dependency('sass-rails', ['~> 5.0.3'])
  spec.add_development_dependency "rake"
end

