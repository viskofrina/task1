# frozen_string_literal: true

class Magazine < ApplicationRecord
  include Sortable
  include Searchable

  validates :title, presence: true
  validates :isbn, presence: true

  has_many :author_magazines
  has_many :authors, through: :author_magazines
end
