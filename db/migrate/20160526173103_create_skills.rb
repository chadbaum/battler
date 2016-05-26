class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|

      t.integer :job_id
      t.string :name
      t.string :type
      t.string :command

      t.timestamps null: false
    end
    add_index :skills, :name
  end
end
