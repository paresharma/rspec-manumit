### RSpec Manumit

A small gem with some utilities to unlease Capybara, RSpec and some other cool
testing gems from the world of Ruby to the rest of the world.

### Usage

Add to Gemfile:
```
gem 'rspec-manumit', git: 'https://github.com/paresharma/rspec-manumit.git'
```

Then, run `bundle install`.

Create `Rakefile` (if not already created) to the project root.

Add the following to the `Rakefile` (if it was already not added, like it would have in a rack application):
```
require 'bundler'
Bundler.require
```

Then, run `rake rspec:manumit:init`. This will create `.rspec` file and `spec/` directory.
Spec directory has a sample feature test (spec/features/hompage_spec.rb)

Capybara requires a running server to run the tests, the test server endpoint can be coded to `spec/manumit_helper.rb` file, or can be pass as a command line argument.
```
$ APP_HOST=http://localhost:8080 bundle exec rspec
```

### License

This project rocks and uses MIT-LICENSE.
