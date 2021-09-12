# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:isbn) { |n| "#{n}" }
    sequence(:description) { |n| "Description #{n}" }

    transient do
      object_number { 10 }
    end

    trait :with_authors do
      after :create do |book, evaluator|
        book.authors << create_list(:author, evaluator.object_number)
      end
    end
  end
end
