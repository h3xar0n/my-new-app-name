FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
	factory :user do
		email 
		password "bladibla"
		first_name "John"
		last_name "Doe"
		admin false
	end
end