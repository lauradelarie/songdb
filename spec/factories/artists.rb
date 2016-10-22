FactoryGirl.define do
  factory :artist do
    name         "Maria"
    bio          { Faker::Lorem.sentence(40) }
    origin       { Faker::Address.city }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
