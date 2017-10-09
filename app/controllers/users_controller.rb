class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
     @user = User.find(params[:id])
     @items = @user.items
  end

  def new
    # @user = User.find(params[:id])
    # @item = Item.new(user_id: @user.id )
  end

  # def destroy
  #   # @user = User.find(params[:id])
  #   @item = Item.find(params[:id])
  #
  #   if @item.destroy
  #     flash[:notice] = "\"#{@item.name}\" was deleted successfully"
  #     redirect_to 'users/show'
  #   else
  #     flash[:alert] = "There was an error deleting the item"
  #   end
  #   puts "Wiki destroy from controller"
  # end

end
