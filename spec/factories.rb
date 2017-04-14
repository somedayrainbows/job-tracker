FactoryGirl.define do

  factory :company do
    sequence(:name) { |n| "#{n} company" }
  end

  factory :job do
    sequence(:title) { |n| "#{n} title" }
    description "description"
    city        "denver"
    level_of_interest 50
  end

  factory :contact do
    sequence(:full_name) { |n| "#{n} full_name" }
    position  "position"
    email    { "#{full_name}@example.com" }
  end

  factory :category do
    sequence(:title) { |n| "#{n} title" }
  end

end
