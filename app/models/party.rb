class Party < ActiveRecord::Base
  has_and_belongs_to_many :characters
  before_save :set_active!

  def set_active!
    self.active = true
  end

  def disband
    self.active = false
    # need to populate the duration field
    # auto-timer this method?
  end

end
