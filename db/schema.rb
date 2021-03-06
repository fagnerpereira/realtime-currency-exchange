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

ActiveRecord::Schema.define(version: 2021_06_01_151416) do

  create_table "quotations", force: :cascade do |t|
    t.integer "real_cents", default: 0, null: false
    t.string "real_currency", default: "BRL", null: false
    t.integer "us_dollar_cents", default: 0, null: false
    t.string "us_dollar_currency", default: "USD", null: false
    t.integer "aus_dollar_cents", default: 0, null: false
    t.string "aus_dollar_currency", default: "AUD", null: false
    t.integer "euro_cents", default: 0, null: false
    t.string "euro_currency", default: "EUR", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
end
