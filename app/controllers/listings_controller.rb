class ListingsController < ApplicationController
    
before_action :set_listing, only: [:show, :edit, :update, :destroy]
before_action :require_seller, only: [:new, :create, :edit, :update]
before_action :require_sameseller, only: [:edit, :update, :destroy]

  def index
   @listings = Listing.all
   if params[:search]
      @listings = Listing.search(params[:search])
    else
      @listings = Listing.all 
    end
  end

  def new
    @listing = Listing.new
  end

    def create
      @listing = Listing.new(listing_params)
      if @listing.save
        redirect_to listing_path(@listing)
      else
        render 'new'
      end
    end

    def edit
    end

    def update
        if @listing.update(listing_params)
        redirect_to listing_path(@listing)
      else
        render 'edit'
      end
    end

    def show
      @listing_seller = @listing.seller
    end

    def destroy
        @listing.destroy
        redirect_to root_path
    end

    private
    def listing_params
       params.require(:listing).permit(:name, :feature1, :feature2, :feature3, :feature4, :feature5, 
                                       :price, :cod, :time, :description, :image, 
                                       :image2, :image3, :image4, :image5, :site, :category_id, :subcategory_id, :gender)
    end

    def set_listing
        @listing = Listing.find(params[:id])
    end

    def require_seller
      if !seller_signed_in?
        redirect_to root_path
      end
    end

    def require_sameseller
      if current_seller != @listing.seller
        redirect_to root_path 
      end
    end
end