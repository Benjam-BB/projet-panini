# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#require 'database_cleaner'
#require 'Faker'
#-- lignes ci dessous pour keroku au cas ou--
DatabaseCleaner.allow_production = true  
DatabaseCleaner.allow_remote_database_url = true
#-------------------------------------------
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

puts "tout est détruit"

20.times do 
	Item.create!(title: Faker::Name.name, description: Faker::Lorem.sentence, price: Faker::Number.decimal(l_digits: 2), image_url: ["https://static.fnac-static.com/multimedia/Images/FR/MDM/b9/73/86/8811449/1541-2/tsp20190111171521/Boite-en-metal-a-13-pochettes-Panini-Foot-2018-2019.jpg","https://images-na.ssl-images-amazon.com/images/I/91HkRXIakRL._SY355_.jpg","https://www.cdiscount.com/pdt2/7/5/5/1/700x700/auc9002032591755/rw/panini-adrenalyn-xl-fifa-365-2019-cristiano-rona.jpg"].sample)
end
puts "produits créés"

20.times do 
	@user = User.create!(email: Faker::Internet.email, first_name: Faker::Name.first_name, password: "password", password_confirmation: "password")
	@cart=Cart.create!(user_id: @user.id)
	5.times do 
		JoinTableCartsItem.create!(item_id: Item.all.sample.id, cart_id: @cart.id)
	end
end
puts "users créés"
puts "paniers créés et remplis"


5.times do 
	Order.create!(user_id: User.all.sample.id)
end
puts "commandes créées"

10.times do 
	JoinTableItemsOrder.create!(order_id: Order.all.sample.id, item_id: Item.all.sample.id)
end

10.times do 
	JoinTableCartsItem.create!(item_id: Item.all.sample.id, cart_id: Cart.all.sample.id)
end
puts "commandes remplies"