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

ActiveRecord::Schema[8.0].define(version: 2024_12_16_150220) do
  create_table "coins", force: :cascade do |t|
    t.string "description"
    t.string "acronym"
    t.string "url_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historical_prices", force: :cascade do |t|
    t.integer "coin_id", null: false
    t.decimal "price", precision: 15, scale: 2
    t.datetime "recorded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coin_id"], name: "index_historical_prices_on_coin_id"
  end

  add_foreign_key "historical_prices", "coins"
end
