class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.boolean :active
      t.time :duration

      t.timestamps null: false
    end
  end
end
