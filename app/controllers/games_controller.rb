class GamesController < ApplicationController
  #l'index de game doit afficher un bouton pour faire une nouvelle party
  #l'index de game doit afficher le meilleur score cumulé de la dernière game soit des 5 dernières party
  #une game est composée de 5 party

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    @party = Party.new
    Party.ten_letters_list = Party.ten_random_letters
  end
end
