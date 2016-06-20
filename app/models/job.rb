class Job < ActiveRecord::Base
  has_many :skills

  has_many :character_jobs
  has_many :characters, through: :character_jobs


  extend FriendlyId
  friendly_id :name, use: :slugged

  def icon
    "/assets/icons/#{active_job_alias.upcase}.png"
  end

end
