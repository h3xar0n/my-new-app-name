FactoryGirl.define do
  
  factory :comment do
  	rating 1
  	association :user, strategy: :build
  	association :product, strategy: :build
  	body "awesome test!"
  end
end