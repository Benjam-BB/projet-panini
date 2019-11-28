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

@admin = User.create!(first_name: "admin", email: "admin_panini@yopmail.com",  password: "password", password_confirmation: "password", admin: true)
puts "coach engagé"


	Item.create!(title: "Ronaldo", description: "Il fenomeno!!", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Pelé", description: "A compléter", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Diego Maradona", description: "El pibe de oro, la main de dieu", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Eric Cantona", description: "Éric Cantona, est un ancien footballeur français, devenu acteur au terme de sa carrière sportive", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Ronaldinho", description: "Ronaldinho est un footballeur international brésilien. Champion du monde 2002 avec le Brésil", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Marco van Basten", description: "Marcel van Basten a remporté le Ballon d'or à 3 reprises", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Fabien Barthez", description: "Avec l'équipe de France, il remporte notamment la Coupe du monde 1998, l'Euro 2000.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Gardien")
	Item.create!(title: "Peter Schmeichel", description: "Peter Bolesław Schmeichel", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Gardien")
	Item.create!(title: "Harald Schumacher", description: "Harald Schumacher surnommé « Toni ». Mec connu pour sa violence.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Gardien")
	Item.create!(title: "carlos valderrama", description: "Lui on l'a choisi pour sa coiffure légendaire.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Emmanuel Petit", description: "Milieu récupérateur et parfois comme défenseur central ou arrière gauche.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Gennaro Gattuso", description: "Gennaro Ivan Gattuso, né le 9 janvier (comme Philippe).", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Johan Cruyff", description: "Johan Cruyff le seul qui est mort", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Michel Platini", description: "Il tirait les coups francs et maintenant il est corrompu... c'est moche, Platoche", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Paul Gascoigne", description: "Anglais comme son taux d'alcoolémie l'indique", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Steven Gerrard", description: "Steven a évolué la quasi-totalité de sa carrière dans son club formateur de Liverpool.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Zinedine Zidane", description: "Zinédine Zidane, on ne le présente pas", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Zico", description: "Arthur Le moins connu, on ne risque pas de vendre sa carte", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Christophe Jallet", description: "Pas de fiche wiki, il est trop nul", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Défenseur")
	Item.create!(title: "Marius Trésor", description: "Marius Trésor est considéré comme un des meilleurs défenseurs français de l'histoire", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Défenseur")
	Item.create!(title: "Franz Beckenbauer", description: "Franz Anton Beckenbauer est un footballeur international", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Défenseur")
	Item.create!(title: "Laurent Blanc", description: "Laurent Blanc est un footballeur français", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Défenseur")
	Item.create!(title: "Paolo Maldini", description: "Le beau Paolo... jamais parti de Milan", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Défenseur")



puts "mercato terminé"

20.times do 
	@fist_name = Faker::Name.first_name
	@user = User.create!(first_name: @fist_name, email: "#{@fist_name}@yopmail.com",  password: "password", password_confirmation: "password")
	5.times do 
		JoinTableCartsItem.create!(item_id: Item.all.sample.id, cart_id: Cart.find_by(user_id:@user.id).id)
	end
end
puts "supporters créés"
puts "paniers remplis"


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