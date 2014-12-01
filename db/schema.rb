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

ActiveRecord::Schema.define(version: 20141201012934) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.string   "nick_name"
    t.string   "coach"
    t.integer  "year"
    t.string   "stadium"
    t.integer  "volume"
    t.string   "location"
    t.string   "president"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "host_file_name"
    t.string   "host_content_type"
    t.integer  "host_file_size"
    t.datetime "host_updated_at"
    t.string   "away_file_name"
    t.string   "away_content_type"
    t.integer  "away_file_size"
    t.datetime "away_updated_at"
  end

  create_table "histories", force: true do |t|
    t.string   "name"
    t.string   "year"
    t.integer  "club_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "histories", ["club_id"], name: "index_histories_on_club_id", using: :btree

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "student_id"
    t.string   "email"
    t.string   "phone"
    t.string   "idol"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "role"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.date     "dob"
    t.string   "nation"
    t.decimal  "height",             precision: 10, scale: 0
    t.decimal  "weight",             precision: 10, scale: 0
    t.string   "position"
    t.string   "leg"
    t.decimal  "level",              precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "club_id"
    t.integer  "number"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "players", ["club_id"], name: "index_players_on_club_id", using: :btree

  create_table "settings", force: true do |t|
    t.string   "facebook"
    t.string   "twitter"
    t.string   "googleplus"
    t.string   "footer_text"
    t.string   "data_source"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "banner_home_file_name"
    t.string   "banner_home_content_type"
    t.integer  "banner_home_file_size"
    t.datetime "banner_home_updated_at"
    t.string   "banner_single_file_name"
    t.string   "banner_single_content_type"
    t.integer  "banner_single_file_size"
    t.datetime "banner_single_updated_at"
    t.string   "banner_search_file_name"
    t.string   "banner_search_content_type"
    t.integer  "banner_search_file_size"
    t.datetime "banner_search_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
