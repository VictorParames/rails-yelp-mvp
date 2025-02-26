class ReviewsController < ApplicationController
  def new
    @restaurants = restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
  def create
    @restaurants = restaurant.find(params[:restaurant_id])
    @review = restaurant.reviews.build(review_params)
    if
      @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
  end
end
end
private

def review_params
  params.require(:review).permit(:content, :rating)
end

