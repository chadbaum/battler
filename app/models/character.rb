class Character < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true, length: { in: 4..8 }
  validates :gender, presence: true

  def get_class_name
    CharClass.where(alias: self.current_class).first.name
  end

end
