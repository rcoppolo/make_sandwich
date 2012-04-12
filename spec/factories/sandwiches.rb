# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sandwich do |f|
		f.kind { ["Meaty","Vegetarian","Vegan"].sample }
  end
end
