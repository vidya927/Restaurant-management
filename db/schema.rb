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

ActiveRecord::Schema.define(version: 20161119091802) do

  create_table "catalogs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "item_name"
    t.float    "quantity_available"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "ordered_dish"
    t.float    "Quntatity_of_each_item"
    t.integer  "no"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "recipe"
    t.string   "ingredients"
    t.integer  "required_qty_in_gm"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
