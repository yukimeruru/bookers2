class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books.all
  end

  def index
    @users = User.all
  end

  def edit
     @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)  end


end

private

  def user_params
    params.require(:user).permit(:name, :profile_image_id, :introduction)
  end
