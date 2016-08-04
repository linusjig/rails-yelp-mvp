class Restaurant < ActiveRecord::Base
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian", "asian", "mediterranean"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  #validates the categories of the restaurants
  validates :category, inclusion: {in: CATEGORIES}
  # if the parent object (restaurant) gets deleted, the revies binded to it
  # get destroyed as well
  has_many :reviews, dependent: :destroy
end
