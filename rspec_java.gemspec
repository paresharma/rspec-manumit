$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rspec_java/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rspec_java"
  s.version     = RspecJava::VERSION
  s.authors     = ["paresharma"]
  s.email       = ["paresh.brahm@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RspecJava."
  s.description = "TODO: Description of RspecJava."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
