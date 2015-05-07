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

  create_table "bookmarks", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "user_id"
  end

  add_index "bookmarks", ["deal_id"], name: "index_bookmarks_on_deal_id"
  add_index "bookmarks", ["user_id"], name: "index_bookmarks_on_user_id"

  create_table "comments", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "user_id"
    t.string  "text"
    t.string  "created_at"
  end

  add_index "comments", ["deal_id"], name: "index_comments_on_deal_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "deal_prices", force: :cascade do |t|
    t.integer  "deal_id"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "deal_prices", ["deal_id"], name: "index_deal_prices_on_deal_id"

  create_table "deals", force: :cascade do |t|
    t.integer  "idtemp"
    t.string   "title"
    t.string   "title_picture"
    t.string   "purchase_link"
    t.string   "store"
    t.text     "description"
    t.string   "category"
    t.string   "detail_link"
    t.datetime "created_at"
    t.datetime "starts_at"
    t.integer  "user_id"
  end

  add_index "deals", ["user_id"], name: "index_deals_on_user_id"

  create_table "items", force: :cascade do |t|
    t.integer "deal_id"
    t.text    "description"
    t.string  "item_picture"
    t.string  "link"
    t.string  "price_string"
  end

  add_index "items", ["deal_id"], name: "index_items_on_deal_id"

  create_table "likes", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "user_id"
    t.boolean "like_type", default: false
  end

  add_index "likes", ["deal_id"], name: "index_likes_on_deal_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
  end

end