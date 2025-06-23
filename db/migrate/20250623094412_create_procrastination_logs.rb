class CreateProcrastinationLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :procrastination_logs do |t|
      t.references :task, null: false, foreign_key: true
      t.datetime :started_at
      t.datetime :ended_at
      t.string :reason

      t.timestamps
    end
  end
end
