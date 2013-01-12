# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "simsimi"
  gem.version       = '1.0.0'
  gem.authors       = ["Qinix"]
  gem.email         = ["i@qinix.com"]
  gem.description   = %q{A chatting bot for ruby}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/qinix/simsimi.rb"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'httparty'
end
