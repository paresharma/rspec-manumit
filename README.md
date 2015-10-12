### Rspec Java

A small gem with some utilities to hook in Capybara, Rspec and some other cool
testing gems from the world of Ruby to the rest of the world.

### Usage

Add to Gemfile:
```
gem 'rspec_java', git: 'https://github.com/paresharma/rspec_java.git'
```

Then, run `bundle install`.

Create `Rakefile` (if not already created) to the project root.

Add the following to the `Rakefile` (if it was already not added, like it would have in a rack application):
```
require 'bundler'
Bundler.require
```

Then, run `rake rspec_java:init`. This will create `.rspec` file and `spec/` directory.
Spec directory has a sample feature test (spec/features/hompage_spec.rb)

Capybara will require a running server to run the tests, the test server endpoint can be coded to `spec/java_helper.rb` file, or can be pass as a command line parameter.
```
$ APP_HOST=http://localhost:8080 rspec
```

### License

This project rocks and uses MIT-LICENSE.
