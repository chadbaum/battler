class AddEquipmentToCharacterItems < ActiveRecord::Migration
  def change
    add_column :character_items, :equipped, :boolean, default: false
    add_column :character_items, :slot, :string, default: nil
  end
end
