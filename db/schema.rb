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

ActiveRecord::Schema.define(version: 20151218224501) do

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
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "avatar_url"
    t.datetime "admin"
    t.integer  "state_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
