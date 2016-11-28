require 'spec_helper'

feature DB_server do
  scenario 'says "Hello, Rory!" when I visit the index' do
    visit '/'
    expect(page).to have_content("Hello, Rory!")
  end

  scenario 'saves a value passed to it in a query string' do
    visit '/set?name=Rory'
    expect(Storage.array[0][:name]).to eq("Rory")
  end

  scenario 'returns a previously stored value' do
    visit '/set?name=Timmy'
    visit '/get?key=name'
    expect(page).to have_content("Timmy")
  end

end
