class BooksController < ApplicationController
  def index
    @books = Book.includes(:authors).all
  end
end
