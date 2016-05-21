class ClassesController < ApplicationController

  def index
    @classes = CharClass.all
  end

  def show
    @class = CharClass.friendly.find(params[:id])
  end

end
