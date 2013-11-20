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

ActiveRecord::Schema.define(version: 20131120165925) do

  create_table "chores", force: true do |t|
    t.string   "task_haver_id"
    t.string   "student_id"
    t.string   "type_of_chore_id"
    t.string   "description_of_chore"
    t.float    "review_of_student"
    t.float    "review_of_task_haver"
    t.float    "ask_price"
    t.float    "price"
    t.datetime "complete_by"
    t.boolean  "active"
  end

  create_table "students", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "image"
    t.string "nu_email"
    t.string "cell_phone"
    t.string "student_id"
  end

  create_table "task_havers", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "image"
    t.string "email"
    t.string "cell_phone"
  end

  create_table "type_of_chores", force: true do |t|
    t.string "name"
  end

end
