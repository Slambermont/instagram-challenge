FactoryBot.define do
  factory :like do
    post nil
    user nil
  end
  factory :comment do
    body "MyText"
    post nil
    user nil
  end
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
