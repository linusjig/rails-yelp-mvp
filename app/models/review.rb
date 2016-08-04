class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, presence: true
  # validates that the presence of the parent
  validates :restaurant, presence: true
  validates :rating, presence: true
  # calidates that the rating is a number from 0 to 5
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 6 }
end
