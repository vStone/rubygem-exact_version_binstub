# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exact_version_binstub'

Gem::Specification.new do |spec|
  spec.name          = "exact_version_binstub"
  spec.version       = ExactVersionBinstub::VERSION
  spec.authors       = ["Jan Vansteenkiste"]
  spec.email         = ["jan@vstone.eu"]
  spec.summary       = %q{Use an exact version in the binstub rubygems generates.}
  spec.description   = %q{Makes sure a generated bin will call the exact version of the gem for which it was generated. The default behaviour is to just require >= 0 which always matches the latest version available..}
  spec.homepage      = "https://github.com/vStone/exact_version_binstub"
  spec.license       = "WTFPL"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "minitest", "~>4.0"
end
