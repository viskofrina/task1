module Sortable
  extend ActiveSupport::Concern

  included do
    scope :by_title, -> { order(:title) }
  end
end