$:.push File.expand_path("../lib", __FILE__)
require "acts_as_versioned/version"

Gem::Specification.new do |s|
  s.name          = 'acts_as_versioned-decisiv'
  s.version       = ActiveRecord::Acts::Versioned::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Rick Olson','Ken Collins']
  s.email         = ['ken@metaskills.net']
  s.homepage      = 'http://github.com/Decisiv/acts_as_versioned/'
  s.summary       = 'ActiveRecord plugin for versioning your models.'
  s.description   = 'ActiveRecord plugin for versioning your models. For Rails 3.'
  s.files         = `git ls-files`.split("\n") - ["acts_as_versioned.gemspec"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.rdoc_options  = ['--charset=UTF-8']
  s.add_runtime_dependency     'activerecord', '~> 3.2.0'
  s.add_development_dependency 'sqlite3',      '~> 1.3'
  s.add_development_dependency 'rake',         '~> 0.9.2'
  s.add_development_dependency 'minitest',     '~> 2.8.1'
  s.add_development_dependency 'factory_girl', '~> 2.6.3'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'forgery'
  s.add_development_dependency 'simplecov'
end
