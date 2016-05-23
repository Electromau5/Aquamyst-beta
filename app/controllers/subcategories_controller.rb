class SubcategoriesController < ApplicationController

def index
	@Subcategories = Subcategory.all
end

def new
	@subcategory = Subcategory.new
end

def create
	@subcategory = Subcategory.new(subcategory_params)
		if @subcategory.save
			flash[:success] = "Subcategory was created successfully"
				redirect_to subcategories_path
		else
			render 'new'
		end
end

def edit
	@subcategory = Subcategory.find(params[:id])
end

def update
	@subcategory = Subcategory.find(params[:id])
		if @subcategory.update(subcategory_params)
			redirect_to subcategory_path
		else
			render 'edit'
		end
end

def show
	@subcategory = Subcategory.find(params[:id])
	@subcategory_listings = @subcategory.listings
end

def women
	@subcategory = Subcategory.find(params[:id])
	@subcategory_women = @subcategory.listings.where(:gender => 'women')
end

def men
	@subcategory = Subcategory.find(params[:id])
	@subcategory_men = @subcategory.listings.where(:gender => 'men')
end

def both
	@subcategory = Subcategory.find(params[:id])
	@subcategory_both = @subcategory.listings.where(:gender => 'both')
end

private

def subcategory_params
	params.require(:subcategory).permit(:name, :image, :description, :gender1, :gender2, :gender3)
end

end

