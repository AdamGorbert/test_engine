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

ActiveRecord::Schema.define(version: 20150202121437) do

  create_table "test_engine_articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_engine_durations", force: true do |t|
    t.string   "minutes"
    t.string   "type"
    t.integer  "learning_journey_id"
    t.integer  "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_engine_durations", ["learning_journey_id"], name: "index_test_engine_durations_on_learning_journey_id"
  add_index "test_engine_durations", ["session_id"], name: "index_test_engine_durations_on_session_id"

  create_table "test_engine_learning_journeys", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_engine_program_modules", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "learning_journey_id"
    t.integer  "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_engine_program_modules", ["learning_journey_id"], name: "index_test_engine_program_modules_on_learning_journey_id"
  add_index "test_engine_program_modules", ["session_id"], name: "index_test_engine_program_modules_on_session_id"

  create_table "test_engine_sessions", force: true do |t|
    t.string   "workflow_state"
    t.integer  "ordinal"
    t.string   "type"
    t.boolean  "has_duration"
    t.boolean  "has_module"
    t.integer  "program_module_id"
    t.integer  "duration_id"
    t.integer  "learning_journey_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_engine_sessions", ["duration_id"], name: "index_test_engine_sessions_on_duration_id"
  add_index "test_engine_sessions", ["learning_journey_id"], name: "index_test_engine_sessions_on_learning_journey_id"
  add_index "test_engine_sessions", ["program_module_id"], name: "index_test_engine_sessions_on_program_module_id"

end
