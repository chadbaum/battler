class DashboardsController < ApplicationController

  def show
    @character = Character.where(user_id: current_user.id).take
  end

end
