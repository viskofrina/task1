# frozen_string_literal: true

FactoryBot.define do
  factory :magazine do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:isbn) { |n| "#{n*44444}" }

    transient do
      object_number { 10 }
    end

    trait :with_authors do
      after :create do |magazine, evaluator|
        magazine.authors << create_list(:author, evaluator.object_number)
      end
    end
  end
end
