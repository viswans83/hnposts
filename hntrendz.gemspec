# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hntrendz/version'

Gem::Specification.new do |spec|
  spec.name          = "hntrendz"
  spec.version       = Hntrendz::VERSION
  spec.authors       = ["Sankaranarayanan Viswanathan"]
  spec.email         = ["rationalrevolt@gmail.com"]
  spec.summary       = %q{Generate HN Trends}
  spec.description   = %q{N/A}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "activerecord"
  spec.add_dependency "nokogiri"
  spec.add_dependency "colorize"
end
