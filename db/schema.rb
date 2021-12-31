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

ActiveRecord::Schema.define(version: 2021_12_31_063553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_holdings", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_account_holdings_on_account_id"
    t.index ["company_id"], name: "index_account_holdings_on_company_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.float "account_balance"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "cik"
    t.string "sector"
    t.string "ticker_symbol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ticker_symbol"], name: "index_companies_on_ticker_symbol", unique: true
  end

  create_table "dividend_histories", force: :cascade do |t|
    t.float "dividend_payout_amount"
    t.date "declaration_date"
    t.date "exdividend_date"
    t.date "record_date"
    t.date "payment_date"
    t.string "dividend_payout_frequency"
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_dividend_histories_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "password_confirmation"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "account_holdings", "accounts"
  add_foreign_key "account_holdings", "companies"
  add_foreign_key "accounts", "users"
  add_foreign_key "dividend_histories", "companies"
end
