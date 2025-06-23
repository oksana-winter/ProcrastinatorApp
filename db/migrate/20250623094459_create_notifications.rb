class CreateNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.string :content
      t.datetime :scheduled_for
      t.boolean :sent

      t.timestamps
    end
  end
end
