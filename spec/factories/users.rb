FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    last_name { Faker::Name.last_name }
    user_name { Faker::Internet.user_name }
    email { Faker::Internet.email }
  end
end
