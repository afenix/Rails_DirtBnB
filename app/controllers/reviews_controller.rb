class ReviewsController < ApplicationController

  def show
    @reviews = Review.all
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @review = @listing.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Your review has been posted."
      redirect_to :back
    else
      flash[:alert] = "There was a problem, try again."
      redirect_to :back
    end
  end

  private
  def review_params
    params.require(:answer).permit(:content)
  end
end
