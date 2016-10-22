FactoryGirl.define do
  factory :song do
    title       { Faker::Company.name }
    album       { Faker::Company.name }
    year        2016
  end
end
