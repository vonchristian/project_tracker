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

ActiveRecord::Schema.define(version: 20160430100719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contractors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "contractor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["contractor_id"], name: "index_contracts_on_contractor_id", using: :btree
    t.index ["project_id"], name: "index_contracts_on_project_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.decimal  "contract_amount"
    t.string   "implementing_office"
    t.integer  "status"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "work_details", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "code"
    t.string   "description"
    t.decimal  "quantity"
    t.string   "unit"
    t.string   "unit_cost"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_work_details_on_project_id", using: :btree
  end

  add_foreign_key "contracts", "contractors"
  add_foreign_key "contracts", "projects"
  add_foreign_key "work_details", "projects"
end
