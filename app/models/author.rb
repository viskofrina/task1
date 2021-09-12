# frozen_string_literal: true

class Author < ApplicationRecord
  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i.freeze

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, format: { with: EMAIL_REGEX, message: 'That is not a valid email format.' }
  validates_uniqueness_of :email

  has_many :author_books
  has_many :author_magazines
  has_many :magazines, through: :author_magazines
  has_many :books, through: :author_books

  def full_name
    [first_name, last_name].join(' ')
  end
end
