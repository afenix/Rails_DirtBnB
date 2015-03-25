require 'rails_helper'

describe "link navigation" do
  it "will go to a listing's page when click on the listing title" do
    listing = FactoryGirl.create(:listing)
    visit root_path
    click_on listing.title
    expect(page).to have_content listing.content
  end

  it "will go to a new listing page when new button is clicked" do
    visit root_path
    click_on "New Listing"
    expect(page).to have_content "Add a new listing"
  end

  it "will go to the edit listing page when button is clicked" do
    listing = FactoryGirl.create(:listing)
    visit listing_path(listing)
    click_on "Edit"
    expect(page).to have_content "Edit your question"
  end
 end
