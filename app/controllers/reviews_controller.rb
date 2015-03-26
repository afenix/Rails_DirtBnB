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

  def edit
    @review = Review.find(params[:id])
    @listing = Listing.find(params[:listing_id])
  end

  def update
    @review = Review.find(params[:id])
    @listing = Listing.find(params[:listing_id])
    if @review.update(review_params)
      flash[:notice] = "Your review has been edited."
      redirect_to listing_path(@listing)
    else
      flash[:alert] = "Yo. You didn't do it right. Fix it."
      redirect_to :back
    end
  end


  private
  def review_params
    params.require(:review).permit(:content, :rating, :listing_id)
  end

end
