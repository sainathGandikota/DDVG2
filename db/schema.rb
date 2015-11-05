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

ActiveRecord::Schema.define(version: 20150925183200) do

  create_table "audios", force: :cascade do |t|
    t.text     "src",        limit: 65535
    t.text     "text",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compaigns", force: :cascade do |t|
    t.text     "name",           limit: 65535
    t.text     "description",    limit: 65535
    t.integer  "start_state_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customs", force: :cascade do |t|
    t.integer  "state",      limit: 4
    t.text     "url",        limit: 65535
    t.integer  "next",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grammars", force: :cascade do |t|
    t.text     "src",        limit: 65535
    t.text     "text",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listens", force: :cascade do |t|
    t.integer  "state",      limit: 4
    t.integer  "prompt",     limit: 4
    t.integer  "help",       limit: 4
    t.integer  "noinput",    limit: 4
    t.integer  "nomatch",    limit: 4
    t.text     "inputtype",  limit: 65535
    t.integer  "grammar",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "says", force: :cascade do |t|
    t.integer  "state",      limit: 4
    t.integer  "audio",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: :cascade do |t|
    t.text     "name",        limit: 65535
    t.text     "description", limit: 65535
    t.text     "statetype",   limit: 65535
    t.integer  "compaign",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transitions", force: :cascade do |t|
    t.text     "name",           limit: 65535
    t.text     "description",    limit: 65535
    t.integer  "from_state_id",  limit: 4
    t.integer  "to_state_id",    limit: 4
    t.text     "condition_text", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
