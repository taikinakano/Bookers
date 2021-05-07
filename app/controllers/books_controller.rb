class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @book = Bookers.new
  end

  def create
    book = Bookers.new(bookers_params)
    book.save
    redirect_to books_path(book.id)
  end

  def edit
  end

  private
  def bookers_params
    params.permit(:title, :body)
  end
end
