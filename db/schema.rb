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

ActiveRecord::Schema.define(version: 2020_09_25_204708) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "likes", force: :cascade do |t|
    t.bigint "traveler_id", null: false
    t.bigint "sightseeing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sightseeing_id"], name: "index_likes_on_sightseeing_id"
    t.index ["traveler_id"], name: "index_likes_on_traveler_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "description"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review"
    t.bigint "sightseeing_id", null: false
    t.bigint "traveler_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sightseeing_id"], name: "index_reviews_on_sightseeing_id"
    t.index ["traveler_id"], name: "index_reviews_on_traveler_id"
  end

  create_table "sightseeings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image_url"
    t.bigint "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_sightseeings_on_location_id"
  end

  create_table "travelers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "likes", "sightseeings"
  add_foreign_key "likes", "travelers"
  add_foreign_key "reviews", "sightseeings"
  add_foreign_key "reviews", "travelers"
  add_foreign_key "sightseeings", "locations"
end
