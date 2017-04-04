FactoryGirl.define do
  factory :comment do
    content     { Faker::Content.content }
  end
end
