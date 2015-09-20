require 'rails_helper'

describe User do 
 
  describe "User Sign up Validation" do 
 

  	it "create a new user with username" do 
  		user = authenticated_user(username: 'junjun')
  		expect( user.valid?).to be true
  	end

  	it "gets an error createing a new user without username" do 
  		user = authenticated_user(username: '')
  		expect( user.valid?).to be_falsy
  	end
  end


end


def authenticated_user(options={})
     user_option = {
     	email: "email#{rand}@fake.com", 
     	password: 'password'
     	}.merge(options)
     user=User.new(user_option)
     user.save
     user
 end