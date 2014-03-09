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

ActiveRecord::Schema.define(version: 20140309111221) do

  create_table "games", force: true do |t|
    t.integer  "number_of_players"
    t.integer  "current_question"
    t.integer  "countdown"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.string   "score"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.integer  "points"
  end

  create_table "questions", force: true do |t|
    t.text     "question_text"
    t.text     "correct_a"
    t.text     "incorrect_a"
    t.text     "incorrect_b"
    t.text     "incorrect_c"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
