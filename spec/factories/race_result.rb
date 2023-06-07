require 'faker'

FactoryBot.define do
  factory :race_result do
    race_date { Faker::Date.between(from: 1.year.ago, to: Date.today) }
    horse_name { Faker::Creature::Horse.name }
    jockey_name { Faker::Name.name }
    race_name { Faker::Lorem.word }
    position { Faker::Number.between(from: 1, to: 10) }
  end
end