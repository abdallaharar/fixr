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

ActiveRecord::Schema.define(version: 20150826170130) do

  create_table "workorders", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "phone",             limit: 8
    t.string   "email"
    t.string   "property_name"
    t.string   "address"
    t.string   "street_number"
    t.string   "street_name"
    t.string   "postal_code"
    t.string   "locality"
    t.string   "sublocality"
    t.string   "state"
    t.string   "country"
    t.string   "formatted_address"
    t.decimal  "latitude",                    precision: 15, scale: 10
    t.decimal  "longitude",                   precision: 15, scale: 10
    t.string   "place_id"
    t.string   "category"
    t.string   "issue_object"
    t.string   "detail_lvl_one"
    t.string   "detail_lvl_two"
    t.text     "notes"
    t.string   "uuid"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "workorders", ["slug"], name: "index_workorders_on_slug"
  add_index "workorders", ["state"], name: "index_workorders_on_state"
  add_index "workorders", ["uuid"], name: "index_workorders_on_uuid"

end
