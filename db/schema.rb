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

ActiveRecord::Schema.define(version: 20151207180435) do

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
    t.string   "size"
    t.string   "bottleshot_file_name"
    t.string   "bottleshot_content_type"
    t.integer  "bottleshot_file_size"
    t.datetime "bottleshot_updated_at"
    t.datetime "blog"
    t.datetime "box"
    t.datetime "original_owner"
    t.datetime "for_sale"
    t.datetime "for_swap"
  end

end
