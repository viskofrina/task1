# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Magazine, type: :model do
  describe "associations" do
    it { should have_many(:authors) }
    it { should have_many(:author_magazines) }
  end

  describe "#attributes" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:isbn) }
  end
end
