class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|

      t.string :name
      t.string :alias
      t.text :description
      t.string :stat_multiplier

      t.timestamps null: false
    end
    add_index :jobs, :alias
  end
end
