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
    question: "Argot Stéphanois, que signifie 'badinguet' ?",
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
    question: "Question bonus : Quelle est la VRAIE capitale de la France ?",
    answers: ["Lyon", "Paris", "Saint-Etienne", "Marseille"],
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
    avatar: ActionController::Base.helpers.asset_path('avatars/sonic.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Robin",
    avatar: ActionController::Base.helpers.asset_path('avatars/robin.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing ut labore et dolore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Valentina",
    avatar: ActionController::Base.helpers.asset_path('avatars/valentina.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur et dolore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Edouard",
    avatar: ActionController::Base.helpers.asset_path('avatars/sonic.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Laurie",
    avatar: ActionController::Base.helpers.asset_path('avatars/sonic.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Louise",
    avatar: ActionController::Base.helpers.asset_path('avatars/sonic.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Ludovic",
    avatar: ActionController::Base.helpers.asset_path('avatars/sonic.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Olivier",
    avatar: ActionController::Base.helpers.asset_path('avatars/sonic.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Victoire",
    avatar: ActionController::Base.helpers.asset_path('avatars/sonic.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Valérie",
    avatar: ActionController::Base.helpers.asset_path('avatars/sonic.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )

  Friend.create!(
    name: "Lucille",
    avatar: ActionController::Base.helpers.asset_path('avatars/sonic.jpg'),
    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore magna aliqua. Ut enim ad minim veniam"
  )
  puts 'game created'
