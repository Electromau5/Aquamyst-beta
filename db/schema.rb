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

ActiveRecord::Schema.define(version: 20160531065822) do

  create_table "applicants", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "location"
    t.text     "description"
    t.string   "category"
    t.string   "vat"
    t.string   "site"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "listings", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "feature1"
    t.string   "feature2"
    t.string   "feature3"
    t.string   "feature4"
    t.string   "feature5"
    t.text     "description"
    t.string   "cod"
    t.string   "time"
    t.string   "site"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name"
    t.string   "image3_content_type"
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
    t.string   "image4_file_name"
    t.string   "image4_content_type"
    t.integer  "image4_file_size"
    t.datetime "image4_updated_at"
    t.string   "image5_file_name"
    t.string   "image5_content_type"
    t.integer  "image5_file_size"
    t.datetime "image5_updated_at"
    t.string   "gender"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.integer  "seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.text     "description"
    t.string   "location"
    t.string   "social1"
    t.string   "social2"
    t.string   "social3"
    t.string   "social4"
    t.boolean  "admin",                  default: false
  end

  add_index "sellers", ["email"], name: "index_sellers_on_email", unique: true
  add_index "sellers", ["reset_password_token"], name: "index_sellers_on_reset_password_token", unique: true

  create_table "subcategories", force: :cascade do |t|
    t.string  "name"
    t.integer "category_id"
    t.string  "gender1"
    t.string  "gender2"
    t.string  "gender3"
    t.boolean "apparel",     default: false
    t.boolean "accessory",   default: false
    t.boolean "mobile",      default: false
    t.boolean "laptop",      default: false
    t.boolean "home",        default: false
    t.boolean "other",       default: false
  end

end
