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

ActiveRecord::Schema.define(:version => 20130329075147) do

  create_table "batches", :force => true do |t|
    t.string   "title"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "days_of_week"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "grade_id"
    t.time     "from_time"
    t.time     "to_time"
  end

  create_table "grades", :force => true do |t|
    t.text     "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "grades_students", :force => true do |t|
    t.integer  "grade_id"
    t.integer  "student_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "grades_students", ["grade_id"], :name => "index_grades_students_on_grade_id"
  add_index "grades_students", ["student_id"], :name => "index_grades_students_on_student_id"

  create_table "mcities", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "smaster_id"
  end

  create_table "smasters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.text     "email"
    t.text     "mobile"
    t.text     "alternate_mobile"
    t.text     "address"
    t.text     "zip_code"
    t.text     "grade"
    t.date     "enrollment_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.text     "address_line1"
    t.text     "address_line2"
    t.text     "qualifies_with"
    t.boolean  "sponsor"
    t.integer  "smaster_id"
    t.integer  "mcitie_id"
  end

end
