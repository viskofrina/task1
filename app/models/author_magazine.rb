class AuthorMagazine < ApplicationRecord
  belongs_to :author
  belongs_to :magazine
end
