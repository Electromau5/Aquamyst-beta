class ConsumersController < ApplicationController
 
   
	def index
		@consumer = Consumer.all
	end

	def new
		@consumer = Consumer.new
	end

	def create
		@consumer = Consumer.new(consumer_params)
			if @consumer.save
				#flash[:success] = "Welcome to the alpha blog #{@consumer.consumername}"
				redirect_to root_path
			else
				render 'new'
			end
	end

	def show
		@consumer = Consumer.find(params[:id])
	end

	def destroy
		@consumer = Consumer.find(params[:id])
		@consumer.destroy
		redirect_to root_path
	end

	def save(listing)
		@consumer.listing << listing
		@consumer.save
	end
private

	def consumer_params
		params.require(:consumer).permit(:name, :location)
	end
end

