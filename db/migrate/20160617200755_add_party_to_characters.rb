class AddPartyToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :party_id, :integer
  end
end
