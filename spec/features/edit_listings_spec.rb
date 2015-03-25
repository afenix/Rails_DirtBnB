require 'rails_helper'

describe 'editing a listing once it has been posted' do
  it 'will edit a question' do
    listing = FactoryGirl.create(:listing)
    visit edit_listing_path(listing)
    fill_in 'Content', :with => "This content"
    click_on "Submit"
    expect(page).to have_content "updated"
  end
end
