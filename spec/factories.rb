FactoryGirl.define do  factory :item do
    name "MyString"
user nil
  end
 
	factory :user do 
		username "alicia"
		email "aliciadesu@yahoo.co.jp"
		password 'aliciawerner'
	end	

end