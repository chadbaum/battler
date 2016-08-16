# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    redirect_to parties_path if current_user && current_user.character
  end
end
