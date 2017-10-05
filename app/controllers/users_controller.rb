class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @items = @user.items.all
  end

  def new
    # @user = User.find(params[:id])
    # @item = Item.new(user_id: @user.id )
  end
end
