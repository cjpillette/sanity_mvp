class CreateForums < ActiveRecord::Migration[5.0]
  def change
    create_table :forums do |t|
      t.text :topic
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
