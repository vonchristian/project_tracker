FactoryGirl.define do
  factory :user do
    first_name "Von Christian"
    last_name  "Halip"
    sequence(:email) {|n| "email#{n}@example.com" }
    password '1111111111'
    password_confirmation '1111111111'
  end
end
