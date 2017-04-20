# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170420052625) do

  create_table "forum_posts", force: :cascade do |t|
    t.text     "message"
    t.integer  "user_id_id"
    t.integer  "forum_id_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["forum_id_id"], name: "index_forum_posts_on_forum_id_id"
    t.index ["user_id_id"], name: "index_forum_posts_on_user_id_id"
  end

  create_table "forums", force: :cascade do |t|
    t.text     "topic"
    t.integer  "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_forums_on_user_id_id"
  end

  create_table "genres", force: :cascade do |t|
    t.text     "theme"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlist_songs", id: false, force: :cascade do |t|
    t.integer "playlist_id"
    t.integer "song_id"
    t.index ["playlist_id", "song_id"], name: "index_playlist_songs_on_playlist_id_and_song_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_playlists_on_user_id_id"
  end

  create_table "songs", force: :cascade do |t|
    t.text     "title"
    t.text     "artrist"
    t.text     "description"
    t.integer  "year"
    t.integer  "genre_id_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["genre_id_id"], name: "index_songs_on_genre_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "avatar"
    t.string   "screen_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
