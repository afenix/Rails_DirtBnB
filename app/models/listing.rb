class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  validates :content, :presence => true
end
