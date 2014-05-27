require 'factory_girl'

FactoryGirl.define do
  factory :user do |f|
    f.username "testuser"
  end

  factory :message do |f|
    f.content "Test message"
    f.association :user
  end
end
