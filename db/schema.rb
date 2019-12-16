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

ActiveRecord::Schema.define(version: 2019_12_08_124944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.float "debt_owed"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "debts", force: :cascade do |t|
    t.float "total_debt"
    t.string "debt_to"
    t.text "description"
    t.float "payment_amount"
    t.float "interest_rate"
    t.integer "total_number_payments"
    t.float "amount_remaining"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_debts_on_user_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.text "comments"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end 

  create_table "payments", force: :cascade do |t|
    t.float "actual_payment_amount"
    t.float "amount_interest"
    t.float "amount_principle"
    t.float "total_todate"
    t.text "comment"
    t.boolean "paid"
    t.bigint "debt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["debt_id"], name: "index_payments_on_debt_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.float "total_debt"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "debts", "users"
  add_foreign_key "payments", "debts"
end
