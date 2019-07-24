class ReviewsController < ApplicationController
  def new
    # create an empty object we can fill out in the form
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])

  end

  def create
    # filled out form for review
    @review = Review.new(review_params)
    # find restaurant params from url
    @restaurant = Restaurant.find(params[:restaurant_id])
    # assign restaurant to review
    @review.restaurant_id = @restaurant.id
    # SAVE the review
    if @review.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
