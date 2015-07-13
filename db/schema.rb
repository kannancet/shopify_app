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

ActiveRecord::Schema.define(version: 20150713095732) do

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "shopify_id"
    t.string   "name"
    t.string   "email"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "shopify_id"
    t.string   "price"
    t.text     "title"
    t.text     "content"
    t.text     "url"
  end

  create_table "recommendation_forms", force: :cascade do |t|
    t.integer  "field_width"
    t.string   "border_color"
    t.integer  "border_size"
    t.string   "text_color"
    t.string   "background_color"
    t.string   "text_font_family"
    t.string   "button_font_family"
    t.string   "button_color"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "button_font_color"
  end

  create_table "recommendations", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "recipient_email"
    t.text     "comment"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "customer_email"
    t.string   "customer_name"
    t.integer  "customer_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string   "shopify_domain", null: false
    t.string   "shopify_token",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shops", ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true

end
