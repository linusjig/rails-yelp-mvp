class ReviewsController < ApplicationController

  before_action :find_restaurant, only: [ :new, :create ]

  # Only create a review in here
  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.create(review_params)
    redirect_to restaurant_path(@restaurant)
  end
end

private

def find_restaurant
  # because the id from restaurant is an external key, we need to pass
  # to restaurants :retaurants_id
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def review_params
  params.require(:review).permit(:content, :rating)
end
