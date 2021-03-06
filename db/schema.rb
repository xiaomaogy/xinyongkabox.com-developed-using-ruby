# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "user_id"
  end

  add_index "bookmarks", ["deal_id"], name: "index_bookmarks_on_deal_id", using: :btree
  add_index "bookmarks", ["user_id"], name: "index_bookmarks_on_user_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "user_id"
    t.string  "text"
    t.string  "created_at"
  end

  add_index "comments", ["deal_id"], name: "index_comments_on_deal_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "deals", force: :cascade do |t|
    t.integer  "idtemp"
    t.string   "title"
    t.string   "title_picture"
    t.string   "store"
    t.text     "description"
    t.string   "category"
    t.datetime "created_at"
    t.string   "purchase_link"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "user_id"
    t.integer "like_value"
  end

  add_index "likes", ["deal_id"], name: "index_likes_on_deal_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "sessions", force: :cascade do |t|
    t.string "email"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
  end

end
