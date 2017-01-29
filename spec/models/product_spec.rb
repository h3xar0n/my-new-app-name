require 'rails_helper'

describe Product do
	before do
		@product = FactoryGirl.create(:product)
	  @user = FactoryGirl.create(:user, email:'user3@email.com')
	  @product.comments.push(FactoryGirl.create(:comment, rating: 1))
	  @product.comments.push(FactoryGirl.create(:comment, rating: 3))
	  @product.comments.push(FactoryGirl.create(:comment, rating: 5))
	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end

	it "is not valid" do
		expect(Product.new(description: "Chair")).not_to be_valid
	end
end




