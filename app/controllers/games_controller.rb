class GamesController < ApplicationController
  #l'index de game doit afficher un bouton pour faire une nouvelle party
  #l'index de game doit afficher le meilleur score cumulé de la dernière game soit des 5 dernières party
  #une game est composée de 5 party

  def index
    @games = Game.all
  end

  def new
    # on initialise une nouvelle game qui initialise une nouvelle party
    @game = Game.new
    @party = Party.new

  end
end
