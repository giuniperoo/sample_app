FactoryGirl.define do
  factory :user do
    name     'Fooly Cooly'
    email    'fl@cl.com'
    password 'foobar'
    password_confirmation 'foobar'
  end
end
