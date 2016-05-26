class Job < ActiveRecord::Base
  has_many :skills

  extend FriendlyId
  friendly_id :name, use: :slugged
end
