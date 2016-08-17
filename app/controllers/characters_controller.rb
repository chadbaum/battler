# frozen_string_literal: true
# Characters
class CharactersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = current_user.create_character(character_params)
    if @character.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :gender)
  end
end
