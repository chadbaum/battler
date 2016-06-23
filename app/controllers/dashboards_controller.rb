class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @character = current_user.character
  end

end
