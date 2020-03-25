# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_12_162217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "break_chunks", force: :cascade do |t|
    t.integer "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "focus_sessions", force: :cascade do |t|
    t.string "start_time"
    t.string "end_time"
    t.string "work_chunks"
    t.string "break_chunks"
    t.integer "duration"
    t.string "focus_type"
    t.string "notes"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meditation_sessions", force: :cascade do |t|
    t.string "start_time"
    t.string "end_time"
    t.string "duration"
    t.string "note"
    t.string "mood"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "profile_pic"
    t.integer "time_meditated"
    t.integer "time_focused"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_chunks", force: :cascade do |t|
    t.integer "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
