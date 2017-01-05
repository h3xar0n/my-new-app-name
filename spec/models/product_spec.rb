require 'rails_helper'

describe Product do
	before do
		@product = Product.create!(name: "Chair")
		@user = User.create!(email: "johndoe@email.com", password: "bladibla")
		@product.comments.create!(rating: 1, user: @user, body: "Horrible!")
		@product.comments.create!(rating: 3, user: @user, body: "Nice")
		@product.comments.create!(rating: 5, user: @user, body: "Fantastic!")
	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end

	it "is not valid" do
		expect(Product.new(description: "Chair")).not_to be_valid
	end
end




