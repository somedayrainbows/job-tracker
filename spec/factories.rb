FactoryGirl.define do
  factory :company do
    name
  end

  sequence :name do |n|
    n
  end

  factory :job do
    title
    description "test"
    city "Denver"
    level_of_interest 5
  end

  sequence :title do |n|
    n
  end

  factory :contact do
    full_name
    position "director"
    email "e@gmail.com"
  end

  sequence :full_name do |n|
    n
  end
end
