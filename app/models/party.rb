class Party < ActiveRecord::Base
  has_and_belongs_to_many :characters

  def active_party(party_id)

  end

end
