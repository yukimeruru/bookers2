class BooksController < ApplicationController

  def create
  end

  def index
    @book = Book.new
    @book.users_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def show
  end

  def destroy
  end

  private

  def post_image_params
    params.require(:book).permit(:title, :body)
  end

end
