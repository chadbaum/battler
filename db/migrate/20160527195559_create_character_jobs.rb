class CreateCharacterJobs < ActiveRecord::Migration
  def change
    create_table :character_jobs do |t|
      t.integer :character_id
      t.integer :job_id
      t.boolean :active, default: false
      t.integer :level, default: 1
      t.integer :xp, default: 0

      t.timestamps null: false
    end
  end
end
