class BooksController < ApplicationController
  def new
  end
  
  def create
    @book = Bser.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end

  def index
    @books = Book.all
  end
  

  def show
  end
  
  
  private

  def book_params
    params.require(:book)
  end
  
end
