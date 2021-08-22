FactoryBot.define do
  factory :user do
    name { Faker::Lorem.word }
    password { Faker::Number.number(10) }
  end
end