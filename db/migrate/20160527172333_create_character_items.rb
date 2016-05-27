class CreateCharacterItems < ActiveRecord::Migration
  def change
    create_table :character_items do |t|
      t.integer :character_id
      t.integer :item_id
      t.integer :quantity
      
      t.timestamps null: false
    end
  end
end
