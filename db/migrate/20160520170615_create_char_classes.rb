class CreateCharClasses < ActiveRecord::Migration
  def change
    create_table :char_classes do |t|
      t.string :name
      t.string :alias
      t.text :description
      t.string :stat_multiplier
      t.timestamps null: false
    end
    add_index :char_classes, :name
  end
end
