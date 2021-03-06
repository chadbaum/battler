# frozen_string_literal: true
# Jobs
class JobsController < ApplicationController
  def index
    @jobs = Job.order(:id)
  end

  def show
    @job = Job.friendly.find(params[:id])
  end
end
