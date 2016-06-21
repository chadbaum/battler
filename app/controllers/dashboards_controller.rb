class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @character = current_user.character
    @character_jobs = current_user.character.character_jobs
  end

end
