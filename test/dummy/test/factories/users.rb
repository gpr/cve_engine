require 'faker'

FactoryGirl.define do
  factory :user do
    name {Faker::Name.name}
    email {Faker::Internet.email}
    password {'tototititata'}
    password_confirmation {'tototititata'}

    factory :admin do
      name 'Admin'
      email 'admin@whaaarsbook.com'
      password {'tototititata'}
      password_confirmation {'tototititata'}
    end
  end
end
