# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    description "MyText"
    manufacturer "MyString"
    start_date "2013-02-21"
    price 1
  end
end
