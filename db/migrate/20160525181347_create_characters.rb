class CreateCharacters < ActiveRecord::Migration
  def change
    enable_extension "hstore"
    create_table :characters do |t|

      t.integer :user_id

      t.string :name
      t.string :gender

      t.integer :char_level, default: 1
      t.integer :char_xp, default: 0

      t.hstore :class_levels, default: {SQR: 1}
      t.string :current_class, default: 'SQR'

      t.integer :gc, default: 1000

      t.hstore :equipment, default: {Head: 'Cap', Chest: 'Clothing', Feet: 'Shoes', Right: 'Rusty Knife'}

      t.timestamps null: false


    end
    add_index :characters, :name
  end
end
