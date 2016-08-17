class CreateEnrolledJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :enrolled_jobs do |t|
      t.integer :character_id
      t.integer :job_id
      t.boolean :active, default: false
      t.integer :level, default: 1
      t.integer :xp, default: 0
      t.timestamps
    end
  end
end
