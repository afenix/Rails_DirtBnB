class ListingsController < ApplicationController

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

end
