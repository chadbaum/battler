class ClassesController < ApplicationController

  def index
    @classes = CharClass.order(:id)
  end

  def show
    @class = CharClass.friendly.find(params[:id])
  end

end
