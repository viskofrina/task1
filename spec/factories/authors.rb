# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    sequence(:first_name) { |n| "First name #{n}" }
    sequence(:last_name) { |n| "Last name #{n}" }
    sequence(:email) { |n| "testing#{n}@email.com" }

    trait :invalid_email do
      email { "test.gmail.vom" }
    end
  end
end
