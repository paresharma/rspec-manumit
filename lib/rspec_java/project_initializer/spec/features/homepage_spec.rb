require 'java_helper'

RSpec.feature 'Home page', js: true do
  before { visit '/' }

  it { expect(page.status_code).to eq(200) }
end
