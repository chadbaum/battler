class CharactersController < ApplicationController
  before_action :authenticate_user!, only: [:profile]

  def index
    @characters = Character.all
  end

  def profile
    @character = Character.where(user_id: current_user.id).first
  end

end
