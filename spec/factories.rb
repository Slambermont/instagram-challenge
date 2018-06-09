FactoryBot.define do
  factory :user do
    email 'user@gmail.com'
    password 'password'
  end
  factory :post do
    message 'Hello, Instagram!'
  end
end
