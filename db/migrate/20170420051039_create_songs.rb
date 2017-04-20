class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.text :title
      t.text :artist
      t.text :description
      t.integer :year
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
