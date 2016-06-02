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
    active_character_job.level
  end

  def active_job_level_up!
    current_active_job = active_character_job
    next_level = active_job_level + 1

    current_active_job.level = next_level
    current_active_job.save
    next_level
  end

  private

  def active_character_job
    character_jobs.find_by active: true
  end

  def active_job
    active_job_id = active_character_job.job_id
    jobs.find active_job_id
  end

end
