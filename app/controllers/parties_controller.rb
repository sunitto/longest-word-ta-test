class PartiesController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @party = Party.new
    @party.ten_letters_list
  end
end
