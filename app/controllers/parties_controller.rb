class PartiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @parties = Party.all
  end

  def create
    @party = current_user.character.parties.create

  end

  def join
    @party = current_user.character.party
  end

  private

  def party_params
    params.require(:pa
  end

end
