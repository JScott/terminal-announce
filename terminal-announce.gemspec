Gem::Specification.new do |gem|
  gem.name        = 'terminal-announce'
  gem.version     = '1.0.0'
  gem.licenses    = 'MIT'
  gem.authors     = ['Justin Scott']
  gem.email       = 'jvscott@gmail.com'
  gem.homepage    = 'http://www.github.com/jscott/terminal-announce/'
  gem.summary     = 'Terminal notifications in a functional way'
  gem.description = gem.summary

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- test/**/*`.split("\n")
  gem.require_paths = ['lib']

  # gem.required_ruby_version = '>= 2.1'

  gem.add_runtime_dependency 'bundler'
  gem.add_runtime_dependency 'rainbow'
  gem.add_runtime_dependency 'contracts'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'riot'
  gem.add_development_dependency 'simplecov'
end
