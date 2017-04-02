FactoryGirl.define do
  factory :company do
    name
  end

  sequence :name do |n|
    "#{n} Company"
  end

  factory :job do
    title
    description
    city
    level_of_interest
  end
end
