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

ActiveRecord::Schema.define(version: 20131209215920) do

  create_table "chore_type_histories", force: true do |t|
    t.integer "student_id"
    t.integer "type_of_chore_id"
  end

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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "image"
    t.string   "nu_email"
    t.string   "cell_phone"
    t.string   "student_id"
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
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true

  create_table "task_havers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "image"
    t.string   "email"
    t.string   "cell_phone"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "task_havers", ["email"], name: "index_task_havers_on_email", unique: true
  add_index "task_havers", ["reset_password_token"], name: "index_task_havers_on_reset_password_token", unique: true

  create_table "type_of_chores", force: true do |t|
    t.string "name"
  end

end
