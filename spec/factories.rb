FactoryBot.define do
  factory :user do
    name 'Salomé'
    username 'Salpal'
    email 'user@gmail.com'
    password 'password'
  end
  factory :post do
    message 'Hello, Instagram!'
    user { User.first || association(:user) }
  end
end
