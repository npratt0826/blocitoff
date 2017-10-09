class ItemsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @items = @user.items.all
    @item = @items.new
    user = @item.user
  end

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)
    # @item.notes = params[:item][:notes]
    # @item.user = current_user

    if @item.save
      flash[:notice] = "Chore added"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "There was an error, try again"
      render :new
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    item = @user.items.find(params[:id])


    if item.destroy
      flash[:notice] = "Chore was completed successfully"
      redirect_to current_user
    else
      flash[:alert] = "There was an error deleting the item"
    end
    puts "Item destroy from controller"
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
