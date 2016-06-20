class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.string :subtype
      t.text :description
      t.integer :power

      t.timestamps null: false
    end
      add_index :items, :name
      add_index :items, :subtype
  end
end
