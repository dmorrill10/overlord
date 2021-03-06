# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'overlord/version'

Gem::Specification.new do |spec|
  spec.name          = "daemon-overlord"
  spec.version       = Overlord::VERSION
  spec.authors       = ["Dustin Morrill"]
  spec.email         = ["dmorrill10@gmail.com"]

  spec.summary       = %q{Start and stop daemons with minimal monitoring.}
  spec.homepage      = "https://github.com/dmorrill10/overlord"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "process_runner"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
