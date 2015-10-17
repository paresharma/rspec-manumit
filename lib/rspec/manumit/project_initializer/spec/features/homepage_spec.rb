require 'manumit_helper'

RSpec.feature 'Home page', js: true do
  scenario 'visit homepage' do
    visit '/'
    expect(page.status_code).to eq(200)
  end
end
