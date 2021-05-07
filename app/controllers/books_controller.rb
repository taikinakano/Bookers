class BooksController < ApplicationController


  def index
    @books = Booker.all
  end

  def show
  end

  def new
    @book = Booker.new
  end

  def create
    book = Booker.new(booker_params)
    book.save
    redirect_to books_path
  end

  def edit
  end

  private
  def booker_params
    params.permit(:title, :body)
  end
end
