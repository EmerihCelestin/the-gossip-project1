# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times do 
# 	users = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph(sentence_count: 3, supplemental: false, random_sentences_to_add: 4), email: Faker::Internet.email, age: Faker::Number.between(from: 18, to: 90))
# end
# 10.times do 
# 	cities = City.create(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)
# end	
# user = User.all 
# my_city = []
# user.each do |u|
# 	rang = Faker::Number.between(from: 1, to: 10)
# 	city = City.find(rang)
# 	u.city = city
# 	u.save
# end
# 20.times do 
# 	gossips = Gossip.create(title: Faker::Music.album, content: Faker::Movie.quote)
# end	
# gossips = Gossip.all 
# user = []
# gossips.each do |g|
# 	rang = Faker::Number.between(from: 1, to: 10)
# 	user = User.find(rang)
# 	g.user = user
# 	g.save
# end
# 10.times do
# 	tags = Tag.create(title: "##{Faker::Book.title}")
# end 
gossips= Gossip.all
gossips.each do |g|
	rang = Faker::Number.between(from: 1, to: 10)
	tags = Tag.find(rang)
	tag_gossips = TagGossip.create(tag: tags, gossip: g)  
end 