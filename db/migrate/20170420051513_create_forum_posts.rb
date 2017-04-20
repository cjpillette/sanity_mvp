class CreateForumPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :forum_posts do |t|
      t.text :message
      t.references :user_id, foreign_key: true
      t.references :forum_id, foreign_key: true

      t.timestamps
    end
  end
end