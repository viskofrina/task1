# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "associations" do
    it { should have_many(:authors) }
    it { should have_many(:author_books) }
  end

  describe "#attributes" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:isbn) }
    it { should validate_presence_of(:description) }
  end

  describe "#scopes" do
    before do
      @author = FactoryBot.create(:author)
      @book1 = FactoryBot.create(:book)
      @book2 = FactoryBot.create(:book)
      @book_with_authors = FactoryBot.create(:book, :with_authors)
    end

    describe "#seach_by_isbn" do
      context "when match is found" do
        it "returns books that match the search term" do
          expect(Book.search_by_isbn("1")).to include(@book1)
          expect(Book.search_by_isbn('1')).to_not include(@book2)
        end
      end

      context "when no match is found" do
        it 'returns an empty collection when no results are found' do
          expect(Book.search_by_isbn("100")).to be_empty
        end
      end
    end

    describe "#search_by_author_email" do
      context "when match is found" do
        it "returns books that match the search term" do
          # should not be dependent on random numbers
          expect(Book.search_by_author_email("testing26@email.com")).to include(@book_with_authors)
          expect(Book.search_by_author_email("testing26@email.com")).to_not include(@book1, @book2)
        end
      end

      context "when no match is found" do
        it 'returns an empty collection when no results are found' do
          expect(Book.search_by_author_email("testing100@email.com")).to be_empty
        end
      end
    end
  end
end
