class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def all_items
    @objects = Book.includes(:authors) + Magazine.includes(:authors)
    @objects = @objects.sort_by(&:title)
  end
end
