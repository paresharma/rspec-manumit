require 'java_helper'

RSpec.feature 'Home page', js: true do
  before { visit '/' }
end
