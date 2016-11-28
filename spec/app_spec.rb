require 'spec_helper'

feature DB_server do
  scenario 'says "Hello, Rory!" when I visit the index' do
    visit '/'
    expect(page).to have_content("Hello, Rory!")
  end
end
