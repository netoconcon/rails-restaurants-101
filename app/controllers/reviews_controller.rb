class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def hide
    @review = Review.find(params[:review_id])
    @review.visible = false # @review.update(visible: false)
    @review.save
    redirect_to restaurant_path(@review.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
