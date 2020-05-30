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

ActiveRecord::Schema.define(version: 2020_05_30_124632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.bigint "user_id"
    t.boolean "participate", default: false, null: false
    t.string "name"
    t.string "last_name"
    t.text "allergies"
    t.boolean "shuttle_to", default: false, null: false
    t.boolean "shuttle_from", default: false, null: false
    t.boolean "child", default: false, null: false
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_guests_on_user_id"
  end

  create_table "honeymoons", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "registry_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["registry_id"], name: "index_honeymoons_on_registry_id"
    t.index ["user_id"], name: "index_honeymoons_on_user_id"
  end

  create_table "registries", force: :cascade do |t|
    t.string "activity"
    t.text "description"
    t.text "perk"
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "guests", "users"
  add_foreign_key "honeymoons", "registries"
  add_foreign_key "honeymoons", "users"
end
