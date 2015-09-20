module TestFactories
   
 def associated_item(options={})
     item_options = {
     name: "Study",
     user: authenticated_user
   }.merge(options)
   Item.create(item_options)
 end

 def authenticated_user(options={})
     user_option = {
        username: "TestGirl",
     	email: "email#{rand}@fake.com", 
     	password: 'password'
     	}.merge(options)
     user=User.new(user_option)
     user.save!
     user
  end


end