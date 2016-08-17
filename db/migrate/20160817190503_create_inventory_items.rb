class CreateInventoryItems < ActiveRecord::Migration[5.0]
  def change
    create_table :inventory_items do |t|
      t.integer :character_id
      t.integer :item_id
      t.integer :quantity
      t.boolean :equipped, default: false
      t.string :slot
      t.timestamps
    end
  end
end
