class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new
    @item.name = params[:item][:name]
    # @item.notes = params[:item][:notes]
    @item.user = current_user

    if @item.save
      flash[:notice] = "Chore added"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "There was an error, try again"
      render :new
    end
  end

end
