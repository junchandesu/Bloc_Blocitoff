require 'rails_helper'

describe "First page" do   

	include TestFactories
	describe "#Welcome_index" do 
		it "has the first page info." do 
			visit root_path
			expect( page ).to have_content("HOLA!")
		end
	end

	describe "sign in" do 
		it "direct to the root" do 
		user = authenticated_user
		visit root_path
 	   
 	   	click_link 'Login'
       	fill_in 'username', with: user.username
       	fill_in 'password', with: user.password
       	click_button 'Submit'
       	visit root_path
       	expect( current_path ).to eq root_path
        end
	end
end