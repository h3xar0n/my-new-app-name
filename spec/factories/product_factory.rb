FactoryGirl.define do
	sequence(:name) { |n| "chair number #{n}" }
	
	factory :product do
    name "chair"
    description "bladibla"
    image_url "image.nl/chair"
   	colour "black"
    price "1500"
  end

end