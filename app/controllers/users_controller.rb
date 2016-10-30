class UsersController < ApplicationController

#before_filter :authenticate_seller!

  def show
    @user = User.find(params[:id])
   end
end