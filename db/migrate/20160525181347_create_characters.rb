class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|

      t.integer :user_id

      t.string :name
      t.string :gender

      t.integer :level, default: 1
      t.integer :xp, default: 0
      t.string :job, default: 'ADV'

      t.integer :gc, default: 500

      t.string :eq_head, default: 'Cap'
      t.string :eq_chest, default: 'Shirt'
      t.string :eq_feet, default: 'Shoes'
      t.string :eq_right, default: 'Rusty Knife'

      t.timestamps null: false


    end
    add_index :characters, :name
  end
end
