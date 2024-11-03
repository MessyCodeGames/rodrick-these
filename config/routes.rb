Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"

  get "questions" => "pages#questions"
  get "win" => "pages#win"
  get "game_over" => "pages#game_over"
end
