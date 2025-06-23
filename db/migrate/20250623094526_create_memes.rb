class CreateMemes < ActiveRecord::Migration[8.0]
  def change
    create_table :memes do |t|
      t.string :image_url
      t.string :caption
      t.string :category

      t.timestamps
    end
  end
end
