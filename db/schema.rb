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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130718123720) do

  create_table "classrooms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.string   "date_start"
    t.string   "date_end"
    t.string   "language"
    t.float    "cost"
    t.boolean  "availability"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "course_image"
  end

  create_table "enrolments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "involvement"
  end

  add_index "enrolments", ["course_id"], :name => "index_enrolments_on_course_id"
  add_index "enrolments", ["user_id"], :name => "index_enrolments_on_user_id"

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lessons", :force => true do |t|
    t.string   "name"
    t.string   "date"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "classroom"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "course_id"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "role"
  end

end
