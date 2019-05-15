class ReviewsController < ApplicationController
  before_action :restaurant_id, only: [:edit, :create, :new]

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
    redirect_to @restaurant
  else
    render :new
  end
  end

  private

  def restaurant_id
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
