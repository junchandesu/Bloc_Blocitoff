require 'rails_helper'
 
 describe "Visiting profiles" do
 
   include TestFactories
 

 
   describe "not signed in" do
 
     it "shows profile" do
      @user = authenticated_user
      
       visit user_path(@user)
       expect(current_path).to eq(user_path(@user)) 
       expect( page ).to have_content(@user.username)
       expect( page ).to have_content(@user.email)     
      end 
   end
 end