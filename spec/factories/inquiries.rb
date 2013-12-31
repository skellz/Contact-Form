# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inquiry do
    email "test@me.com"
    subject "This doesn't work"
    description "You broke it"
    first_name "John"
    last_name "Doe"
  end
end
