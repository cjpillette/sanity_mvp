class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.text :title
      t.text :artrist
      t.text :description
      t.integer :year
      t.references :genre_id, foreign_key: true

      t.timestamps
    end
  end
end
