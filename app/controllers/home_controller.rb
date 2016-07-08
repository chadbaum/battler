class HomeController < ApplicationController
  def index
    if current_user && current_user.character
      redirect_to parties_path
    end
  end
end
