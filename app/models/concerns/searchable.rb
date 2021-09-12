module Searchable
  extend ActiveSupport::Concern

  included do
    scope :search_by_isbn, -> (isbn) { where("isbn = ?", isbn) }
    scope :search_by_author_email, -> (email) { includes(:authors).select { |object| object.authors.to_a.any? { |author| author.email == email}}}
  end
end