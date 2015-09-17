lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'newrelic-praxis/version'

Gem::Specification.new do |spec|
  spec.name          = "newrelic-praxis"
  spec.version       = Praxis::NewRelic::VERSION
  spec.authors = ["Josep M. Blanquer","Dane Jensen"]
  spec.summary       = %q{New Relic plugin for Praxis.}
  spec.email = ["blanquer@gmail.com","dane.jensen@gmail.com"]

  spec.homepage = "https://github.com/rightscale/newrelic-praxis"
  spec.license = "MIT"
  spec.required_ruby_version = ">=2.1"

  spec.require_paths = ["lib"]
  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.add_runtime_dependency 'praxis', [">= 0.18"]
  spec.add_runtime_dependency 'praxis-blueprints', [">= 2.2"]
  spec.add_runtime_dependency 'praxis-mapper', [">= 4.1"]

  spec.add_runtime_dependency 'newrelic_rpm', [">= 3.13"]
  spec.add_runtime_dependency 'activesupport', [">= 3"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0"

end
