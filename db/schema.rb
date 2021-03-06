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

ActiveRecord::Schema.define(version: 20150305171351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: true do |t|
    t.string   "name"
    t.integer  "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_subscriptions", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.string   "status"
    t.string   "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_waiting_lists", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.integer  "speaker_id"
    t.integer  "location_id"
    t.integer  "day_id"
    t.string   "time"
    t.integer  "slot"
    t.string   "subtitle"
    t.integer  "limit"
    t.integer  "limit_banamex"
  end

  add_index "events", ["slug"], name: "index_events_on_slug", using: :btree

  create_table "locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  create_table "speakers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "slug"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.integer  "category_id"
    t.string   "profile_image_id"
  end

  add_index "speakers", ["slug"], name: "index_speakers_on_slug", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
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
    t.integer  "folio"
    t.boolean  "cliente_banamex"
    t.boolean  "banamex_ticket"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "workshop_subscriptions", force: true do |t|
    t.integer  "user_id"
    t.integer  "workshop_id"
    t.string   "status"
    t.string   "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workshop_waiting_lists", force: true do |t|
    t.integer  "user_id"
    t.integer  "workshop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workshops", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "slug"
    t.integer  "speaker_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "time"
    t.integer  "slot"
    t.integer  "category_id"
    t.integer  "day_id"
    t.integer  "length"
    t.integer  "limit"
    t.integer  "limit_banamex"
  end

end
