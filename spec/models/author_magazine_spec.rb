require 'rails_helper'

RSpec.describe AuthorMagazine, type: :model do
  context "associations" do
    it { should belong_to(:author) }
    it { should belong_to(:magazine) }
  end
end
