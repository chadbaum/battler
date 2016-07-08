class PartiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @parties = Party.all
    @party = Party.new
  end

  def create
    @party = current_user.character.create_party(leader: current_user.character.name)
    current_user.save!
  end

  def join
    current_user.character.party_id = params[:party_id]
    redirect_to parties_path
  end


end
