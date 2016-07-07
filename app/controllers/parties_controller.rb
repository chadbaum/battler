class PartiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @parties = Party.all
    @party = Party.new
  end

  def create
    @party = current_user.character.party.create
  end

  def join
    @party = current_user.character.party
  end


end
