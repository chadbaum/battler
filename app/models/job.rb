class Job < ActiveRecord::Base
  has_many :skills

  has_many :characters, through: :character_jobs
  has_many :characters

  extend FriendlyId
  friendly_id :name, use: :slugged
end
