class UsersController < ApplicationController
  def show
    @users = User.find(params[:id])
    @books = @user.reverse_order
  end

  def index
    @users = User.all
  end
end
