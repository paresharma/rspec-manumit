require 'java_helper'

RSpec.feature 'Home page', js: true do
  before { visit '/' }

  it { expect(page).to match_reference_screenshot }
end
