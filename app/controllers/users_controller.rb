class UsersController < ApplicationController
  def show
    @books = @user.title.page(params[:page]).reverse_order
  end

  def index
    @users = User.all
  end
end
