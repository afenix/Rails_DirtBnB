require 'rails_helper'

describe 'the adding a listing process' do
  it 'will add a listing' do
    visit new_listing_path
    fill_in 'Title', :with => 'Old ratty blanket'
    fill_in 'Content', :with => 'It\'ll be on the corner.'
    click_on 'Submit'
    expect(page).to have_content 'posted'
  end
end
