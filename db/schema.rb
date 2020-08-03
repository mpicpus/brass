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

ActiveRecord::Schema.define(version: 2020_08_02_224414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parcels", force: :cascade do |t|
    t.string "name"
    t.integer "product_id"
    t.float "weight_in_g"
    t.float "vol_in_ml"
    t.jsonb "dimensions_in_mm"
    t.float "num_of_units"
    t.string "unit_name"
    t.float "stock_in_units"
    t.float "price"
    t.datetime "available_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.string "permalink"
    t.string "meta_title"
    t.string "meta_description"
    t.string "meta_keywords"
    t.string "description"
    t.datetime "deleted_at"
    t.datetime "available_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
