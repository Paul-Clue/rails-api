FactoryBot.define do
  factory :appointments do
    name { Faker::Faker::Date.between(from: 2.year.ago, to: Date.today) }
    done false
    user_id nil
  end
end
