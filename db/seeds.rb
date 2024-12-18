# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Destroying questions, friends and games'
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
    question: "Quelle est la nationalité officielle de Victoire ta moitié?",
    answers: ["Russe", "Franco-Russe", "Biélorusse", "Française", "Franco-Biélorusse"],
    answer: "Française"
  )

  Question.create!(
    number: 9,
    question: "Attention fun fact! Lequel de ces 4 fun facts est vrai?",
    answers: ["Un corps humain contient 250 mg d'or en tout!", "Un crayon à papier peut dessiner une ligne de 12 000 km", "Les humains ont envoyé un homme sur la lune avant d'avoir mis des roulettes sur les valises", "Les astronautes n'ont pas le droit de vote dans l'espace"],
    answer: "Les humains ont envoyé un homme sur la lune avant d'avoir mis des roulettes sur les valises"
  )

  Question.create!(
    number: 10,
    question: "Quel est le vrai prénom de Victoire?",
    answers: ["Yelisaveta", "Adelina", "Svetlana", "Smislova"],
    answer: "Yelisaveta"
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
    message: "Félicitatiooooooooooooons mon Audrick. A l'habitude on préfère les taquineries plutôt que les compliments mais je pense que c'est le meilleur moment pour une jolie exception. Alors bravo pour tout, en particulier pour avoir survécu au coup de batte d'Edouard, il faut le souligner, bravo pour ce joli parcours. Et puis surtout merci, chaque moment à te cotoyer a été un vrai plaisir que ce soit au travail ou en dehors, merci d'être ce garçon gentil et blagueur. Tu es quelqu'un de terriblement bien, et j'ai la chance de te compter parmi mes amis. J'espère qu'il y aura plein d'autres projets en commun. Maintenant profite, kiffe parce que ça passe vite. Encore un grand bravo. Allez les verts (il fallait le placer bien sûr). Coeur sur toi."
  )

  Friend.create!(
    name: "Edouard",
    avatar: ActionController::Base.helpers.asset_path('avatars/edouard.png'),
    message: "Salut Jacky, te voilà enfin docteur! Félicitations! Fini les coups de batte de baseball (en mousse) ou les béquilles dans l'entrejambe! A toi la vie d'adulte, un post doc auquel tu pourras venir en trottinette avec un casque sur la tête (sinon Emilie déchirera ton contrat)! Profite bien de cette période post thèse, c'est super de passer sa journée à jouer aux jeux vidéo et à regarder des animés ;-) !"
  )

  Friend.create!(
    name: "Laurie",
    avatar: ActionController::Base.helpers.asset_path('avatars/laurie.png'),
    message: "Félicitations Dr. Gibert! Chapeau bas pour avoir passé 3 années à coder et recoder, mais te voilà maintenant Docteur et, sans aucun doute, prêt à conquérir le monde de la modélisation! Je te souhaite le meilleur pour la suite! PS: j'attends toujours mon dico du gaga stéphanois depuis novembre 2021..."
  )

  Friend.create!(
    name: "Louise",
    avatar: ActionController::Base.helpers.asset_path('avatars/louise.png'),
    message: "Bravo Dr. Gibert, je te souhaite plein de bonnes choses pour la suite, félicitations et allez les verts ✨"
  )

  Friend.create!(
    name: "Ludo",
    avatar: ActionController::Base.helpers.asset_path('avatars/ludo.png'),
    message: "Ça y est Dr Gibert! Quel beau parcours depuis notre année en M2 ensemble 😎. Je garde que les bons souvenirs de cette année avec toute la clique !!! On se retrouvera pour faire une soirée limbo tous ensemble. Congratulations, et je te souhaite que du bonheur!"
  )

  Friend.create!(
    name: "Olivier",
    avatar: ActionController::Base.helpers.asset_path('avatars/olive.png'),
    message: "Au jour d'aujourd'hui 😂, te voici enfin Docteur! Il était temps! Bravo pour cette belle réussite malgré les embûches (souvent rencontrées dans des salles de foot), des collègues qui ne comprennent rien au codage et une ASSE qui descend puis qui remonte... C'était pas facile mais tu l'as fait! Toutes mes félicitations. Bien amicalement. Olivier."
  )

  Friend.create!(
    name: "Victoire",
    avatar: ActionController::Base.helpers.asset_path('avatars/vic.png'),
    message: "Bravo mon chat t'es le plus fort comme toujours!"
  )

  Friend.create!(
    name: "Valérie",
    avatar: ActionController::Base.helpers.asset_path('avatars/val.png'),
    message: "Audrick, juste quelques mots pour t'envoyer toutes mes féliciations! Te voilà à présent l'heureux titulaire d'un doctorat! Tu as beaucoup de mérite car je sais que cela n'a pas été tous les jours facile pour toi. Tu as su t'accrocher, persévérer et grâce à ta volonté, tu as obtenu ce pour quoi tu avais tant travaillé! Je te souhaite de continuer ta route dans cet état d'esprit et plein de réussites à l'avenir pour t'envoler vers la route des succès. Bon courage pour la suite et encore toutes mes félicitations. Bisous."
  )

  Friend.create!(
    name: "Lucille",
    avatar: ActionController::Base.helpers.asset_path('avatars/lucille.png'),
    message: "Félicitations pour cette thèse! Je suis très contente d'avoir eu la chance de croiser ton chemin (comme quoi le labo de Saint-Etienne aura eu des points positifs 😉) et que tu sois arrivé à avoir une très belle thèse! Tu le mérites! Je te souhaite pleins de belles choses pour la suite autant côté professionnel que personnel! Pleins de bisous et à bientôt j'espère!"
  )
  puts 'game created'
