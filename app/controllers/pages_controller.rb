class PagesController < ApplicationController

  def home
  end

  def quizz
    @questions = Question.all
    @game = Game.last
  end

  def game_over
  end

  def win
  end
end
