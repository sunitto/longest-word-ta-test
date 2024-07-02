class PartiesController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @party = Party.new
    @party.ten_letters_list = Party.ten_random_letters
  end
end
