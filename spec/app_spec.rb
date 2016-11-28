require 'spec_helper'

feature DB_server do
  scenario 'says "Hello, Rory!" when I visit the index' do
    visit '/'
    expect(page).to have_content("Hello, Rory!")
  end

  scenario 'saves a value passed to it in a query string' do
    visit '/submit?name=Rory'
    expect(Storage.array[1]).to eq("Rory")
  end

end
