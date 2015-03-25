require 'rails_helper'

describe "add a review to a listing" do
  it "will add a review to a listing" do
    listing = FactoryGirl.create(:listing)
    visit listing_path(listing)
    click_on "Review this listing"
    fill_in "Content", :with => "Too dirty"
    fill_in "Rating", :with => "3"
    click_on "Add review"
    expect(page).to have_content "Your review has been posted."
  end
end

describe "relationship on page between listing and reviews" do
  it "will show reviews on a listings page" do
    listing = FactoryGirl.create(:listing)
    review = FactoryGirl.create(:review)
    visit listing_path(listing)
    expect(page).to have_content listing.review.content
  end
end
