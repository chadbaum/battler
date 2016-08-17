# frozen_string_literal: true
# Job
class Job < ActiveRecord::Base
  has_many :skills

  has_many :character_jobs
  has_many :characters, through: :enrolled_jobs

  extend FriendlyId
  friendly_id :name, use: :slugged
end
