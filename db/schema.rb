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

ActiveRecord::Schema.define(version: 20170224195717) do

  create_table "accounts", force: :cascade do |t|
    t.text    "client",                limit: 65535
    t.text    "services",              limit: 65535
    t.text    "instagram",             limit: 65535
    t.text    "facebook",              limit: 65535
    t.text    "yelp",                  limit: 65535
    t.text    "slique_email",          limit: 65535
    t.text    "pr_partner",            limit: 65535
    t.boolean "ubest"
    t.boolean "fivestarboss"
    t.boolean "facebook_ad"
    t.text    "facebook_ad_notes",     limit: 65535
    t.text    "correspondence",        limit: 65535
    t.text    "messaging_timeline_q1", limit: 65535
    t.text    "messaging_timeline_q2", limit: 65535
    t.text    "messaging_timeline_q3", limit: 65535
    t.text    "messaging_timeline_q4", limit: 65535
    t.text    "priorities",            limit: 65535
    t.text    "promotions",            limit: 65535
    t.text    "notes",                 limit: 65535
    t.string  "name",                  limit: 255
  end

  create_table "creative_developments", force: :cascade do |t|
    t.string  "design_name", limit: 255
    t.date    "requested"
    t.boolean "completed",               default: false
    t.integer "account_id",  limit: 4
  end

  create_table "instagram_reports", force: :cascade do |t|
    t.text     "note",               limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "reports", force: :cascade do |t|
    t.text     "focus",                         limit: 65535
    t.text     "creative_developments_summary", limit: 65535
    t.text     "upcoming",                      limit: 65535
    t.text     "questions",                     limit: 65535
    t.integer  "account_id",                    limit: 4
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "reports", ["account_id"], name: "index_reports_on_account_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string  "name",       limit: 255
    t.date    "requested"
    t.boolean "completed",              default: false
    t.integer "account_id", limit: 4
  end

  add_foreign_key "reports", "accounts"
end
