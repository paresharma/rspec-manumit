$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'rspec_java/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'rspec_java'
  s.version     = RspecJava::VERSION
  s.authors     = ['paresharma']
  s.email       = ['paresh.brahm@gmail.com']
  s.homepage    = 'https://github.com/paresharma/rspec_java'
  s.summary     = 'Utilities to hook in Capybara, Rspec and some other cool testing gems from the world of Ruby to the rest of the world.'
  s.description = 'Utilities to hook in Capybara, Rspec and some other cool testing gems from the world of Ruby to the rest of the world.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'capybara', '~> 2.5.0'
  s.add_dependency 'poltergeist', '~> 1.7.0'
  s.add_dependency 'rspec', '~> 3.3.0'
end
