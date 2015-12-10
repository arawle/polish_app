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

ActiveRecord::Schema.define(version: 20151210221831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "polishes", force: :cascade do |t|
    t.string   "brand"
    t.string   "collection"
    t.integer  "releaseYear"
    t.string   "name"
    t.string   "code"
    t.string   "finish"
    t.string   "color"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "url"
  end

  create_table "states", force: :cascade do |t|
    t.string   "condition"
    t.string   "swatched"
    t.string   "fill"
    t.string   "thinned"
    t.string   "notes"
    t.string   "bottle_shot"
    t.string   "mani_shot"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "polish_id"
    t.string   "obtained"
    t.string   "purchase_price"
    t.string   "bottleshot_file_name"
    t.string   "bottleshot_content_type"
    t.integer  "bottleshot_file_size"
    t.datetime "bottleshot_updated_at"
    t.datetime "blog_at"
    t.datetime "box_at"
    t.datetime "original_owner_at"
    t.datetime "for_sale_at"
    t.datetime "for_swap_at"
    t.decimal  "size"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.string   "avatar_url"
    t.datetime "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
