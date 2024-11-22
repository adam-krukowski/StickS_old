# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_11_21_230746) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_places_on_user_id"
  end

  create_table "ticks", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.boolean "drinking_water"
    t.boolean "trash_bins"
    t.boolean "bag_dispensers"
    t.boolean "water_play_areas"
    t.boolean "small_large_areas"
    t.boolean "fenced_areas"
    t.boolean "shade_rest_areas"
    t.boolean "open_spaces"
    t.boolean "low_noise"
    t.boolean "safe_paths"
    t.boolean "no_dog_zones"
    t.boolean "dog_friendly_businesses"
    t.boolean "toilet_facilities"
    t.boolean "playdate_opportunities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_ticks_on_place_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "places", "users"
  add_foreign_key "ticks", "places"
end
