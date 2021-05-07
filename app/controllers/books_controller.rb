class BooksController < ApplicationController
  def index
    #@books = Bookers.show(bookers_params)
     
    #投稿機能↓

  end

  def show
  end

  def new
    @book = Bookers.new
  end

  def create
    book = Bookers.index(bookers_params)
    book.save
    rediret_to books_path
  end

  def edit
  end

  private
  def bookers_params
    params.require(:bookers).permit(:title, :body)
  end
end
