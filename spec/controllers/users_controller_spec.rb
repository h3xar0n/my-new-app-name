require 'rails_helper'

describe User, :type => :model do
  it "should not validate users without an email address" do
    @user = FactoryGirl.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end
end  


describe UsersController, :type => :controller do

  let!(:user1) { FactoryGirl.create(:user, email:'user1@email.com') }
  let(:user2) { FactoryGirl.create(:user, email:'user2@email.com') }

  describe 'GET #show' do
  	 context 'User is logged in' do
     		before do
     			sign_in :user1
     		end

     		it 'loads correct user details' do
     			get :show, id: user1.id
     			expect(response).to have_http_status(200)
     			expect(assigns(:user)).to eq user
     		end

     		it 'redirects to root_path' do
     			get :show, id: user2.id
     			expect(response).to have_http_status(302)
     			expect(response).to redirect_to(root_path)
     		end
     end

     context 'No user is logged in' do
       it 'redirects to login' do
         get :show, id: user1.id
         expect(response).to redirect_to(new_user_session_path)
       end
     end
  end
end
