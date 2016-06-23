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
    @character = current_user.build_character(character_params)
    @character.save!
    @character.character_jobs.create(job_id: 1, active: true)
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
