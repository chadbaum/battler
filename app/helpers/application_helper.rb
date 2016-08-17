# frozen_string_literal: true
# Application
module ApplicationHelper
  def active_job_portrait
    "/assets/portraits/#{@character.active_job.job.alias.upcase}.gif"
  end

  def icon
    "/assets/icons/#{@character.active_job.job.alias.upcase}.png"
  end
end
