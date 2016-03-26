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

ActiveRecord::Schema.define(version: 20160326181651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "program_details", force: :cascade do |t|
    t.integer  "program_id"
    t.string   "address",                 null: false
    t.string   "phone_number",            null: false
    t.string   "description",             null: false
    t.string   "days_offered",            null: false
    t.string   "time",                    null: false
    t.string   "location_type",           null: false
    t.string   "meals_offered",           null: false
    t.string   "grades_served",           null: false
    t.string   "enrollment_type",         null: false
    t.string   "enrollment_period",       null: false
    t.string   "enrollment_requirements", null: false
    t.string   "cost",                    null: false
    t.string   "focus",                   null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "program_details", ["program_id"], name: "index_program_details_on_program_id", using: :btree

  create_table "programs", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "link",       null: false
    t.date     "start_date", null: false
    t.date     "end_date",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "program_details", "programs"
end