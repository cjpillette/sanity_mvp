class PlaylistSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :playlist_songs, :id => false do |t|
      t.integer "playlist_id"
      t.integer "song_id"
    end
    add_index("playlist_songs", ["playlist_id", "song_id"])
  end
end
