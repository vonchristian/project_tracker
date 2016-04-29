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

ActiveRecord::Schema.define(version: 20160501090129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accomplishments", force: :cascade do |t|
    t.integer  "work_detail_id"
    t.decimal  "quantity"
    t.datetime "date"
    t.string   "remarks"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["work_detail_id"], name: "index_accomplishments_on_work_detail_id", using: :btree
  end

  create_table "additional_amounts", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "work_detail_id"
    t.string   "remarks"
    t.datetime "date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["work_detail_id"], name: "index_additional_amounts_on_work_detail_id", using: :btree
  end

  create_table "additional_quantities", force: :cascade do |t|
    t.integer  "work_detail_id"
    t.decimal  "quantity"
    t.datetime "date"
    t.string   "remarks"
    t.decimal  "unit_cost"
    t.decimal  "total_cost"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["work_detail_id"], name: "index_additional_quantities_on_work_detail_id", using: :btree
  end

  create_table "contractors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "position"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "contractor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["contractor_id"], name: "index_contracts_on_contractor_id", using: :btree
    t.index ["project_id"], name: "index_contracts_on_project_id", using: :btree
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "plate_number"
    t.string   "make_and_model"
    t.decimal  "acquisition_cost"
    t.datetime "acquisition_date"
    t.integer  "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "description"
    t.string   "unit_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  create_table "stocks", force: :cascade do |t|
    t.decimal  "quantity",     precision: 9, scale: 2
    t.integer  "inventory_id"
    t.decimal  "unit_price",   precision: 9, scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["inventory_id"], name: "index_stocks_on_inventory_id", using: :btree
  end

  create_table "work_details", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "code"
    t.string   "description"
    t.decimal  "quantity"
    t.string   "unit"
    t.decimal  "unit_cost"
    t.integer  "status"
    t.decimal  "budget"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_work_details_on_project_id", using: :btree
  end

  add_foreign_key "accomplishments", "work_details"
  add_foreign_key "additional_amounts", "work_details"
  add_foreign_key "additional_quantities", "work_details"
  add_foreign_key "contracts", "contractors"
  add_foreign_key "contracts", "projects"
  add_foreign_key "stocks", "inventories"
  add_foreign_key "work_details", "projects"
end
