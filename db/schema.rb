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

ActiveRecord::Schema.define(version: 20140207191048) do

  create_table "entries", force: true do |t|
    t.string   "name"
    t.text     "text"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entry_images", force: true do |t|
    t.integer  "entry_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entry_images", ["entry_id"], name: "index_entry_images_on_entry_id", using: :btree

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.string   "wroted_by"
    t.text     "howtomake"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
