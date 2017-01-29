FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
	
	factory :user do
		email 
		password "bladibla"
		first_name "John"
		last_name "Doe"
		admin false
	end

	factory :admin, class: User do
		email 
		password "bladibla"
		first_name "Jane"
		last_name "Doe"
		admin true
	end

	factory :invalid_user do
		first_name nil
	end
end