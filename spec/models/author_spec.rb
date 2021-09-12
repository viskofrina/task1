# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "associations" do
    it { should have_many(:books) }
    it { should have_many(:magazines) }
    it { should have_many(:author_magazines) }
    it { should have_many(:author_books) }
  end

  describe "#attributes" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }

    context "Email regex validation" do
      it "should be valid if the email regex is valid" do
        expect(FactoryBot.build(:author)).to be_valid
      end

      it "should return error message when them email is not valid" do
        author = FactoryBot.build(:author, :invalid_email)
        author.valid?

        expect(author.errors[:email]).to include("That is not a valid email format.")
      end
    end
  end

  describe '#methods' do
    it "returns a authors's full name as a string" do
      user = FactoryBot.build(:author, first_name: "John", last_name: "Doe")

      expect(user.full_name).to eq "John Doe"
    end
  end
end
