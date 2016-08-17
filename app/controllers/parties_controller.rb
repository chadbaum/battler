# frozen_string_literal: true
# Parties
class PartiesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_character, only: [:leave]

  def index
    @parties = Party.all
    @party = Party.new
  end

  def create
    @party = current_user.character.create_party(
      leader: current_user.character.name
    )
    current_user.character.save!
    redirect_to parties_path
  end

  def join
    current_user.character.party_id = params[:party_id]
    redirect_to parties_path
  end

  def leave
    current_character.update_attributes(party_id: nil)
    render text: "#{@character.name} has left the party."
  end

  def disband
    @party = Party.find(params[:party_id])
    party.delete
    redirect_to parties_path
  end

  private

  def require_authorized_for_character
    if current_character.user != current_user
      render text: 'Unauthorized', status: :Unauthorized
    end
  end

  def current_character
    @character = Character.find(params[:character_id])
  end
end
