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
    question: "Quelle est la capitale de la France ?",
    answers: ["Paris", "Lyon", "Marseille", "Toulouse"],
    answer: "Paris"
  )

  Question.create!(
    number: 2,
    question: "Quelle est la capitale de l'Espagne ?",
    answers: ["Madrid", "Barcelone", "Valence", "Séville"],
    answer: "Madrid"
  )

  Question.create!(
    number: 3,
    question: "Quelle est la capitale de l'Allemagne ?",
    answers: ["Berlin", "Munich", "Hambourg", "Francfort"],
    answer: "Berlin"
  )

  Question.create!(
    number: 4,
    question: "Quelle est la capitale de l'Italie ?",
    answers: ["Rome", "Milan", "Naples", "Turin"],
    answer: "Rome"
  )
  puts "All questions have been added to the database"

  puts 'Creating the games'
  Game.create!(
    lives: 3
  )

  puts 'Creating the friends'
  Friend.create!(
    avatar: "",
    message: "Tu pues la merde!"
  )

  Friend.create!(
    avatar: "",
    message: "Tu pues la crotte!"
  )

  Friend.create!(
    avatar: "",
    message: "Tu pues la pisse!"
  )

  Friend.create!(
    avatar: "",
    message: "Tu pues le vomi!"
  )
  puts 'game created'
