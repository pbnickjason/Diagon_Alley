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

ActiveRecord::Schema.define(version: 20161107224346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perf_exps", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "grade_level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "code"
  end

  create_table "perf_exps_projects", id: false, force: :cascade do |t|
    t.integer "perf_exp_id", null: false
    t.integer "project_id",  null: false
  end

  add_index "perf_exps_projects", ["perf_exp_id"], name: "index_perf_exps_projects_on_perf_exp_id", using: :btree
  add_index "perf_exps_projects", ["project_id"], name: "index_perf_exps_projects_on_project_id", using: :btree

  create_table "perf_exps_standards", id: false, force: :cascade do |t|
    t.integer "standard_id", null: false
    t.integer "perf_exp_id", null: false
  end

  add_index "perf_exps_standards", ["perf_exp_id", "standard_id"], name: "index_perf_exps_standards_on_perf_exp_id_and_standard_id", using: :btree
  add_index "perf_exps_standards", ["standard_id", "perf_exp_id"], name: "index_perf_exps_standards_on_standard_id_and_perf_exp_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title",        default: "", null: false
    t.text     "description",  default: ""
    t.decimal  "price"
    t.text     "contents"
    t.text     "instructions"
    t.text     "summary"
    t.string   "tags",         default: [],              array: true
    t.string   "image"
    t.integer  "user_id"
  end

  create_table "projects_standards", id: false, force: :cascade do |t|
    t.integer "project_id",  null: false
    t.integer "standard_id", null: false
  end

  add_index "projects_standards", ["project_id", "standard_id"], name: "index_projects_standards_on_project_id_and_standard_id", using: :btree
  add_index "projects_standards", ["standard_id", "project_id"], name: "index_projects_standards_on_standard_id_and_project_id", using: :btree

  create_table "standards", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "parent_id"
  end

  add_index "standards", ["parent_id"], name: "index_standards_on_parent_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "image"
    t.string   "color"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
