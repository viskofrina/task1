# frozen_string_literal: true

class Book < ApplicationRecord
  include Sortable
  include Searchable
  validates :title, presence: true
  validates :isbn, presence: true
  validates :description, presence: true

  has_many :author_books
  has_many :authors, through: :author_books
end
