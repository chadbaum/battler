class Character < ActiveRecord::Base
  belongs_to :user

  has_many :character_items
  has_many :items, through: :character_items

  has_many :character_jobs
  has_many :jobs, through: :character_jobs


  validates :name, presence: true, length: { in: 4..8 }
  validates :gender, presence: true

  def active_job_name
    active_job.name
  end

  def active_job_level
    active_job.level
  end

  private

  def active_job
    active_character_job = character_jobs.where active: true
    active_job_id = active_character_job.take.job_id
    active_job = Job.find active_job_id
    active_job
  end

end
