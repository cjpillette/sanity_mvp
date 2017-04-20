class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.integer :year

      t.timestamps
    end
  end
end
