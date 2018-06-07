lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slanger/health_check/version'

Gem::Specification.new do |spec|
  spec.name          = 'slanger-health_check'
  spec.version       = Slanger::HealthCheck::VERSION
  spec.authors       = ['FENG Zhichao']
  spec.email         = ['flankerfc@gmail.com']

  spec.summary       = %q{Health check for Slanger service}
  spec.description   = %q{Health check for Slanger service}
  spec.homepage      = "https://github.com/flanker/slanger-health_check"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'slanger', '~> 0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
