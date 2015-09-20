require 'faker'

# create User

10.times do 
	user = User.new(
		username: Faker::Internet.user_name,
		email: Faker::Internet.email,
		password: Faker::Lorem.characters(10)
		)
	user.save!
end
Faker::Date.between(7.days.ago, 5.days.ago)
user = User.new(
	username: 'junko',
	email: 'aliciajace@gmail.com',
	password: 'helloworld'
	)
	user.save!
users = User.all

100.times do
	Item.create(
		name: Faker::Lorem.sentence,
		user: users.sample,
		created_at: Faker::Date.between(10.days.ago, Time.now)
		)
end
 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Item.count} items created"



