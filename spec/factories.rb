FactoryGirl.define do
  factory(:user) do
    name('James')
    id(1)
  end

  factory(:listing) do
    title('Beach Yurt')
    content('Some content')
    user_id(1)
    id(2)
  end

  factory(:review) do
    content('Some other content')
    rating(3)
    user_id(1)
    listing_id(2)
  end
end
