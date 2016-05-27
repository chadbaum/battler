class Character < ActiveRecord::Base
  belongs_to :user

  has_many :items, through: :character_items
  has_many :character_items

  has_many :jobs, through: :character_jobs
  has_many :character_jobs

  validates :name, presence: true, length: { in: 4..8 }
  validates :gender, presence: true

  def get_job_name
    Job.where(alias: self.job).first.name
  end

  def get_current_job_level
    job = self.job
    case job
    when "ADV"
      self.ADV
    when "SQR"
      self.SQR
    when "KNT"
      self.KNT
    when "THF"
      self.THF
    when "MNK"
      self.MNK
    when "WHM"
      self.WHM
    when "BLM"
      self.BLM
    end
  end

end
