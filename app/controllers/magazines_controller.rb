class MagazinesController < ApplicationController
  def index
    @magazines = Magazine.includes(:authors).all
  end
end
