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

ActiveRecord::Schema.define(version: 2019_12_18_175308) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "number"
    t.string "neighborhood"
    t.string "city"
    t.integer "unity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unity_id"], name: "index_addresses_on_unity_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "unity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "body"
    t.string "duration"
    t.index ["unity_id"], name: "index_courses_on_unity_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.integer "unity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unity_id"], name: "index_phones_on_unity_id"
  end

  create_table "pre_registrations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.integer "unity_type_id"
    t.integer "unity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unity_id"], name: "index_pre_registrations_on_unity_id"
    t.index ["unity_type_id"], name: "index_pre_registrations_on_unity_type_id"
  end

  create_table "sn_types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_networks", force: :cascade do |t|
    t.integer "sn_type_id"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "unity_id"
    t.index ["sn_type_id"], name: "index_social_networks_on_sn_type_id"
    t.index ["unity_id"], name: "index_social_networks_on_unity_id"
  end

  create_table "unities", force: :cascade do |t|
    t.string "name"
    t.string "site"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "unity_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
