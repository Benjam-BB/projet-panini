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


	Item.create!(title: "Ronaldo", description: "Ronaldo Luis Nazário de Lima, dit Ronaldo, né le 22 septembre 1976 à Bento Ribeiro, un quartier de Rio de Janeiro, est un footballeur international brésilien, qui évoluait au poste d'avant-centre. Il commence sa carrière professionnelle au Brésil, à Cruzeiro, avant de partir ensuite pour l'Europe et le PSV Eindhoven. Il y reste deux saisons avant de signer pour le FC Barcelone pour un séjour d'une saison. Ronaldo est ensuite recruté par l'Inter Milan lors d'un transfert record. Il reste cinq saisons en Serie A. Après la Coupe du monde 2002, il rejoint les « Galactiques » du Real Madrid pour 42 millions d'euros. Après cinq saisons avec le club madrilène, il rejoint le Milan AC. En 2009, il retourne dans son pays natal et il est transféré aux Corinthians, club dans lequel il joue ses derniers matchs. Il annonce sa retraite le 14 février 2011.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Pelé", description: "Edson Arantes do Nascimento, dit Pelé, né le 23 octobre 1940 à Três Corações, est un footballeur brésilien évoluant au poste d'attaquant et de meneur de jeu du milieu des années 1950 au milieu des années 1970. Figure majeure du football et fréquemment présenté comme le meilleur joueur de l'histoire, il est le seul footballeur à avoir été champion du monde à trois reprises, en 1958, 1962 et 1970, avec la sélection brésilienne.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Diego Maradona", description: "Diego Armando Maradona, né le 30 octobre 1960 à Lanús (et oui...) est un footballeur international argentin. Il évoluait au poste de milieu offensif sous le maillot numéro 10. Surnommé El Pibe de Oro (« Le gamin en or »), Pelusa, El Diez, Dieguito, Le Maître, il est considéré comme l'un des plus grands joueurs de l'histoire du football. Il fait partie de l'équipe mondiale du XXe siècle.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Eric Cantona", description: "Éric Cantona, né à Marseille le 24 mai 1966, est un ancien footballeur français, devenu acteur au terme de sa carrière sportive. Sa carrière sportive en France et en Angleterre – où il est surnommé « Eric the King» – suscite aussi bien l'enthousiasme pour ses qualités de joueur que les polémiques autour de son attitude sur le terrain et en dehors. Pendant sa carrière de joueur, Cantona est un attaquant talentueux et inspiré. Champion d'Angleterre avec Leeds United et à quatre reprises avec Manchester United.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Ronaldinho", description: "Ronaldo de Assis Moreira, né le 21 mars 1980 à Porto Alegre au Brésil, plus communément connu sous le pseudonyme de Ronaldinho Gaúcho ou tout simplement Ronaldinho, est un footballeur international brésilien. Il est Champion du monde 2002 avec l'équipe du Brésil. ", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Marco van Basten", description: "Marcel van Basten dit Marco van Basten, né le 31 octobre 1964 à Utrecht, est un footballeur international néerlandais devenu entraîneur puis dirigeant. Ayant remporté le Ballon d'or à trois reprises, il est considéré comme l'un des plus grands joueurs néerlandais de tous les temps et l'un des meilleurs attaquants de sa génération.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Fabien Barthez", description: "Fabien Barthez, né le 28 juin 1971 à Lavelanet (Ariège), est un ancien footballeur international évoluant au poste de gardien de but entre 1990 et 2007. Avec l'équipe de France, il remporte notamment la Coupe du monde 1998, l'Euro 2000 et la Coupe des confédérations en 2003. Il gagne aussi la Ligue des champions en 1993 avec l'Olympique de Marseille.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Gardien")
	Item.create!(title: "Peter Schmeichel", description: "Peter Bolesław Schmeichel, né le 18 novembre 1963 à Gladsaxe au Danemark, est un footballeur international danois, qui jouait au poste de gardien de but. Il est considéré comme l’un des plus grands gardiens de but de l’histoire. Il a été élu meilleur gardien de football des années 1992 et 1993 et a également été classé parmi les dix meilleurs gardiens de football du XXe siècle par l’IFFHS.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Gardien")
	Item.create!(title: "Harald Schumacher", description: "Harald Schumacher surnommé « Toni » Schumacher est un footballeur allemand, né le 6 mars 1954 à Düren (Allemagne de l'Ouest aujourd'hui Allemagne). Il fut pendant sept ans le gardien de l'équipe d'Allemagne de football de 1979 à 1986, succédant à Sepp Maier. Avec sa sélection nationale, il a remporté l'Euro 1980 et fut par deux fois finaliste de la Coupe du monde de football en 1982 et 1986. Il est resté célèbre pour sa sortie violente, considérée comme une agression sur le joueur français Patrick Battiston lors d'une demi-finale de Coupe du monde opposant la France à la RFA, le 8 juillet 1982. ", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Gardien")
	Item.create!(title: "carlos valderrama", description: "Lui on l'a choisi pour sa coiffure légendaire.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Emmanuel Petit", description: "Emmanuel Petit, né le 22 septembre 1970 à Dieppe (Seine-Maritime), est un footballeur international français. Il évolue au poste de milieu récupérateur et parfois comme défenseur central ou arrière gauche.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Gennaro Gattuso", description: "Gennaro Ivan Gattuso, né le 9 janvier 1978 à Corigliano Calabro, est un ancien footballeur international italien, reconverti entraîneur. Il est bien connu pour son caractère bien trempé et son acharnement défensif sur le terrain, qui lui a donné en italien son surnom de Ringhio (« rugissement »).", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Johan Cruyff", description: "Hendrik Johannes Cruijff, dit Johan Cruyff, né le 25 avril 1947 à Amsterdam et mort le 24 mars 2016 à Barcelone, est un footballeur international néerlandais, qui évoluait au poste d'attaquant.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Attaquant")
	Item.create!(title: "Michel Platini", description: "Il tirait les coups francs et maintenant il est corrompu... c'est moche, Platoche", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Paul Gascoigne", description: "Anglais comme son taux d'alcoolémie l'indique", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Steven Gerrard", description: "Steven George Gerrard, né le 30 mai 1980 à Whiston dans la banlieue de Liverpool, est un ancien footballeur international anglais ayant évolué la quasi-totalité de sa carrière dans son club formateur de Liverpool avant de conclure son parcours au Los Angeles Galaxy", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Zinedine Zidane", description: "Zinédine Zidane, né le 23 juin 1972 à Marseille, est un footballeur international français devenu entraîneur. Durant sa carrière de joueur, entre 1988 et 2006, il évolue au poste de milieu offensif, comme meneur de jeu. Wikipédia", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Zico", description: "Arthur Antunes Coimbra, dit Zico, né le 3 mars 1953 à Rio de Janeiro, est un footballeur international brésilien, qui évolue longuement au poste de milieu offensif au sein du Flamengo. Zico marque cinquante-deux buts lors de ses soixante-douze sélections avec l'équipe du Brésil entre 1976 et 1988.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Milieu")
	Item.create!(title: "Christophe Jallet", description: "Pas de fiche wiki, il est trop nul", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Défenseur")
	Item.create!(title: "Marius Trésor", description: "Marius Trésor, né le 15 janvier 1950 à Sainte-Anne en Guadeloupe, est un footballeur international français. Il évolue au poste de libéro du début des années 1970 au début des années 1980. Il est considéré comme un des meilleurs défenseurs français de l'histoire.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Défenseur")
	Item.create!(title: "Franz Beckenbauer", description: "Franz Anton Beckenbauer, né le 11 septembre 1945 à Munich, est un footballeur international puis entraîneur allemand.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Défenseur")
	Item.create!(title: "Laurent Blanc", description: "Laurent Blanc, né le 19 novembre 1965 à Alès (Gard) , est un footballeur français. Il évolue majoritairement au poste de défenseur du début des années 1980 au début des années 2000.", price: Faker::Number.decimal(l_digits: 2).round(2), position: "Défenseur")
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