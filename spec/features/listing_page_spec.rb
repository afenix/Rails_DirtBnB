require 'rails_helper'

describe "add a review to a listing" do
  it "will add a review to a listing" do
    listing = FactoryGirl.create(:listing)
    visit listing_path(listing)
    fill_in 'Content', :with => 'It was dirty'
    fill_in 'Rating', :with => 3
    click_on 'Submit'
    expect(page).to have_content "Your review has been posted."
  end

  it "will allow user to edit their review" do
    listing = FactoryGirl.create(:listing)
    review = FactoryGirl.create(:review)
    visit listing_path(listing)
    click_on "Edit"
    fill_in 'Rating', :with => 2
    click_on 'Submit'
    expect(page).to have_content "Your review has been edited."
  end

  it "will allow a user to delete their review" do
    listing = FactoryGirl.create(:listing)
    review = FactoryGirl.create(:review)
    visit listing_path(listing)
    click_on "Delete Posting"
    expect(page).to have_no_content review
  end
end

describe "relationship on page between listing and reviews" do
  it "will show reviews on a listings page" do
    listing = FactoryGirl.create(:listing)
    review = FactoryGirl.create(:review)
    visit listing_path(listing)
    expect(page).to have_content review.content
  end
end
