class ListingsController < ApplicationController

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(listing_params)
    if @listing.save
      flash[:notice] = "Your listing has been posted"
      redirect_to '/'
    else
      flash[:alert] = "Something went wrong. Please try again!"
      redirect_to :back
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
      if @listing.update(listing_params)
        flash[:notice] = "Your listing has been updated"
        redirect_to listing_path(@listing)
      else
        flash[:alert] = "Something went horribly wrong.  I mean, it's bad, people."
        redirect_to :back
      end
  end

private
  def listing_params
    params.require(:listing).permit(:title, :content, :user_id)
  end

end
