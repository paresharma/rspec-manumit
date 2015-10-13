require 'spec_helper'

require 'capybara/rspec'
require 'capybara/poltergeist'

Capybara.default_driver = Capybara.javascript_driver = :poltergeist

# Specify app host here
# Capybara.app_host = 'http://localhost:9966'
# Or read it from the environment
Capybara.app_host = ENV['APP_HOST']
Capybara.run_server = false

# Add rest of the configuration below
