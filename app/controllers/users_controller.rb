class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
    @book = Book.new
    @user = current_user
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
    if @user.user == current_user
      render "edit"
    else
      redirect_to user_path(current_user)
    end
  end

  def update
    @user = User.find(params[:id])
    @book.user_id = current_user.id
    if @user.update(user_params)
      frash[:notice] = 'You have updated user successfully.'
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :profile_image_id, :introduction)
  end
end
