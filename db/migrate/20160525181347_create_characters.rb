class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|

      t.integer :user_id

      t.string :name
      t.string :gender
      t.integer :gc, default: 500

      t.timestamps null: false


    end
    add_index :characters, :name
  end
end
