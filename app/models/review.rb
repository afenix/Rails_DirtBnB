class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing
  validates :content, :presence => true
  validates :rating, :presence => true
end
