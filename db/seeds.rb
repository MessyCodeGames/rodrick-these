# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Destroying questions and games'
  Question.destroy_all
  Game.destroy_all
  Friend.destroy_all
  puts 'All questions, games and friends have been destroyed'

  # Creating the projects
  puts 'Creating the questions'
  Question.create!(
    number: 1,
    question: "Parler gaga; que signifie 'badinguet' ?",
    answers: ["Tablier (en cuir) de femme", "Doigt de pied", "Attardé, simple d’esprit", "Personne qui parle à tort et à travers"],
    answer: "Attardé, simple d’esprit"
  )

  Question.create!(
    number: 2,
    answers: ["9", "6", "10", "15"],
    answer: "6",
    question: <<-QUESTION
      Quelle est le résultat du code R suivant? \n
      sum_values <- 0\n
      for(i in 1:5) {\n
        if(i %% 2 == 0) { sum_values <- sum_values + i }\n
      }\n
      sum_values
    QUESTION
  )

  Question.create!(
    number: 3,
    question: "En quelle année la ville de Saint-Étienne a-t-elle été fondée ?",
    answers: ["476", "1150", "1285", "1536"],
    answer: "1150"
  )

  Question.create!(
    number: 4,
    question: "Quel est le seul acronyme juste ?",
    answers: ['PHRC : Protocole Hospitalier de Recherche Clinique', 'COCORC : COmité de COntrôle de la Recherche Clinique', 'RIPH : Recherches Impliquant la Personne Humaine', 'DRCI : Direction de la Recherche Clinique et de l’Innovation'],
    answer: 'RIPH : Recherches Impliquant la Personne Humaine'
  )

  Question.create!(
    number: 5,
    question: "Lors de la révolution française, St-Etienne a changé de nom, lequel ?",
    answers: ['Martigny-le-Peuple', 'C’est faux, St-Etienne n’a jamais changé de nom, c’est nimp !', 'Bucy-la-République', 'Armeville'],
    answer: 'Armeville'
  )

  Question.create!(
    number: 6,
    question: "En 1970, l’ASSE choisit de mettre sur son logo une panthère noire en hommage à...",
    answers: [' Moussa Dembélé ', 'Salif Keita', ' Aymé Kountchou ', ' Abdoulaye Sarr '],
    answer: 'Salif Keita'
  )

  Question.create!(
    number: 7,
    question: "Quel est le nom du fruit du démon de Trafalgar D. Law ?",
    answers: ['Ope Ope no Mi', 'Hie Hie no Mi', 'Gura Gura no Mi', 'Mera Mera no Mi'],
    answer: 'Ope Ope no Mi'
  )

  Question.create!(
    number: 8,
    question: "Placeholder en attente: quelle est la 1ère réponse?",
    answers: ["1", "2", "3", "4"],
    answer: "1"
  )

  Question.create!(
    number: 9,
    question: "Placeholder en attente: quelle est la 1ère réponse?",
    answers: ["1", "2", "3", "4"],
    answer: "1"
  )

  Question.create!(
    number: 10,
    question: "Placeholder en attente: quelle est la 1ère réponse?",
    answers: ["1", "2", "3", "4"],
    answer: "1"
  )

  Question.create!(
    number: 11,
    question: "Question bonus : Quelle est la VRAIE capitale de la France ?",
    answers: ["Caen", "Paris", "Saint-Etienne"],
    answer: "Saint-Etienne"
  )
  puts "All questions have been added to the database"

  puts 'Creating the games'
  Game.create!(
    lives: 3
  )


  puts 'Creating the friends'
  Friend.create!(
    name: "Sonic",
    avatar: ActionController::Base.helpers.asset_path('avatars/sonic_2.png'),
    message: "Mon p'tit Gibert, toutes mes félicitations! C'est avec émotion que je te souhaite le meilleur pour la suite DOCTEUR GIBERT! Tu as assuré comme un boss! Je suis contente d'avoir fait ta connaissance! Merci pour tous les moments de rigolades et de soutien dans les moments plus difficiles! Je n'oublie pas non plus notre trio infernal avec Robine! La bise bro! So. PS: tu ne veux pas nous pondre un modèle nous permettant de sélectionner de vrais joueurs pour le prochain mercato de l'ASSE? Mdr"
  )

  Friend.create!(
    name: "Robin",
    avatar: ActionController::Base.helpers.asset_path('avatars/robin_2.png'),
    message: "P'tain je vais plus pouvoir t'appeler Mr. Jacky, ça va être Docteur Jacky maintenant n*****, ça va me faire bizarre! Fiou en fouillant les photos j'ai réalisé que ça commençait à faire un bout de temps qu'on se connait finalement, tu commences presque à prendre un peu de barbe! En tout cas, chapeau bas c'était de la frappe cette thèse kouhya, la mif du sang, aura +1000 ou un truc du genre je te vois moins alors je suis plus à jour sur les nouvelles expressions! PS: V'la téma la twingo. Je rajoute en plus une phrase pour que mon commentaire soit plus long que celui de Sonic."
  )

  Friend.create!(
    name: "Valentina",
    avatar: ActionController::Base.helpers.asset_path('avatars/valentina.png'),
    message: "Lorem ipsum dolor sit amet, consectetur et dolore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Edouard",
    avatar: ActionController::Base.helpers.asset_path('avatars/edouard.png'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Laurie",
    avatar: ActionController::Base.helpers.asset_path('avatars/laurie.png'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Louise",
    avatar: ActionController::Base.helpers.asset_path('avatars/louise.png'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Ludovic",
    avatar: ActionController::Base.helpers.asset_path('avatars/ludo.png'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Olivier",
    avatar: ActionController::Base.helpers.asset_path('avatars/olive.png'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Victoire",
    avatar: ActionController::Base.helpers.asset_path('avatars/vic.png'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Valérie",
    avatar: ActionController::Base.helpers.asset_path('avatars/val.png'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Lucille",
    avatar: ActionController::Base.helpers.asset_path('avatars/lucille.png'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )
  puts 'game created'
