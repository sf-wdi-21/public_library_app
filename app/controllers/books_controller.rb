class BooksController < ApplicationController

  def index
    @books = Book.all
    render :index
  end
end
