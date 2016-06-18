class DashboardsController < ApplicationController

  def show
    @character = Character.where(user_id: current_user.id).take
    @character_jobs = @character.character_jobs
  end

end
