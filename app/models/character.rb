class Character < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true, length: { in: 4..8 }
  validates :gender, presence: true

  def get_job_name
    Job.where(alias: self.current_job).first.name
  end

end
