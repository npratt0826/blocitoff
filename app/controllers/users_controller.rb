class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.all(params[:id])
  end

  def new

  end
end
